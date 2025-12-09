import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../domain/models/bookings/booking/booking.dart';
import '../providers/notes_di.dart';

@RoutePage()
class NotesPage extends ConsumerWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesState = ref.watch(NotesDi.notesProvider);

    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Расписание',
        mediaQuery: MediaQuery.of(context),
        showBackButton: false,
      ),
      backgroundColor: AppColors.base0,
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          await ref.read(NotesDi.notesProvider.notifier).refresh();
        },
        child: notesState.when(
          idle: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(
            child: Text(
              message,
              style: const TextStyle(color: AppColors.carbonFiber),
            ),
          ),
          resolved: (bookings) {
            if (bookings.isEmpty) {
              return const Center(
                child: Text(
                  'Нет записей',
                  style: TextStyle(fontSize: 16, color: AppColors.base60),
                ),
              );
            }

            // Group bookings by day of week
            final bookingsByDay = <int, List<Booking>>{};
            for (final booking in bookings) {
              final weekday = booking.dateTime.weekday;
              bookingsByDay.putIfAbsent(weekday, () => []).add(booking);
            }

            // Sort bookings within each day by time
            for (final dayBookings in bookingsByDay.values) {
              dayBookings.sort((a, b) => a.dateTime.compareTo(b.dateTime));
            }

            // Sort days (Monday = 1, Sunday = 7)
            final sortedDays = bookingsByDay.keys.toList()..sort();

            return ListView(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 60),
              children: [
                ...sortedDays.map((weekday) {
                  final dayBookings = bookingsByDay[weekday]!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12, top: 8),
                        child: Text(
                          _getWeekdayName(weekday),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.carbonFiber,
                          ),
                        ),
                      ),
                      AppCard(
                        color: AppColors.fairway,
                        contentPadding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            ...dayBookings.asMap().entries.map((entry) {
                              final index = entry.key;
                              final booking = entry.value;
                              return Column(
                                children: [
                                  _BookingTile(
                                    booking: booking,
                                    onDelete: () => _showDeleteConfirmation(
                                      context,
                                      ref,
                                      booking,
                                    ),
                                  ),
                                  if (index < dayBookings.length - 1)
                                    const SizedBox(height: 12),
                                ],
                              );
                            }),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                }),
              ],
            );
          },
        ),
      ),
    );
  }

  String _getWeekdayName(int weekday) {
    switch (weekday) {
      case 1:
        return 'Понедельник';
      case 2:
        return 'Вторник';
      case 3:
        return 'Среда';
      case 4:
        return 'Четверг';
      case 5:
        return 'Пятница';
      case 6:
        return 'Суббота';
      case 7:
        return 'Воскресенье';
      default:
        return '';
    }
  }

  void _showDeleteConfirmation(
    BuildContext context,
    WidgetRef ref,
    Booking booking,
  ) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Удалить запись?'),
        content: Text(
          'Вы уверены, что хотите удалить запись на занятие с '
          '${booking.masterFirstName} ${booking.masterLastName}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              final success = await ref
                  .read(NotesDi.notesProvider.notifier)
                  .deleteBooking(booking);
              if (success && context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Запись успешно удалена'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            child: const Text('Удалить', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class _BookingTile extends StatelessWidget {
  final Booking booking;
  final VoidCallback onDelete;

  const _BookingTile({required this.booking, required this.onDelete});

  Future<void> _openUrl(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    await url_launcher.launchUrl(
      uri,
      mode: url_launcher.LaunchMode.externalApplication,
    );
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ссылка скопирована в буфер обмена'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final time = DateFormat('HH:mm').format(booking.dateTime);
    final date = DateFormat('d MMMM', 'ru_RU').format(booking.dateTime);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.base0,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                time,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.fairway,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          '${booking.masterFirstName} ${booking.masterLastName}',
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.base0,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete_outline,
                          color: AppColors.base0,
                          size: 20,
                        ),
                        onPressed: onDelete,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    booking.topic,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.base0,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.base0,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '•',
                        style: TextStyle(fontSize: 16, color: AppColors.base0),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${booking.duration} мин',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.base0,
                        ),
                      ),
                    ],
                  ),
                  if (booking.conferenceLink.isNotEmpty) ...[
                    const Divider(height: 9, indent: 0, endIndent: 0),
                    const Text(
                      'Ссылка для подключения',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.base0,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Conference link
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.link,
                          size: 14,
                          color: AppColors.base0,
                        ),
                        const SizedBox(width: 6),
                        Flexible(
                          child: GestureDetector(
                            onTap: () =>
                                _openUrl(context, booking.conferenceLink),
                            child: Text(
                              booking.conferenceLink,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.base0,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.base0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              _copyToClipboard(context, booking.conferenceLink),
                          child: const Text(
                            'Скопировать',
                            style: TextStyle(fontSize: 12),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
