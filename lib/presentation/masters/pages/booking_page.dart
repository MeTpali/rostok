import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/buttons/label_button.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../notes/providers/notes_di.dart';
import '../providers/masters_di.dart';

@RoutePage()
class BookingPage extends ConsumerStatefulWidget {
  final int masterId;
  final String name;
  const BookingPage({required this.masterId, required this.name, super.key});

  @override
  ConsumerState<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends ConsumerState<BookingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(
        ref
            .read(MastersDi.bookingProvider.notifier)
            .init(masterId: widget.masterId),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final bookingState = ref.watch(MastersDi.bookingProvider);

    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Запись на online занятие к Александра Кузнецова',
        mediaQuery: MediaQuery.of(context),
      ),
      backgroundColor: AppColors.fairway,
      body: bookingState.when(
        idle: () => const Center(
          child: CircularProgressIndicator(color: AppColors.base0),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.base0),
        ),
        error: (message) => Center(
          child: Text(message, style: const TextStyle(color: AppColors.base0)),
        ),
        resolved: (master, selectedTopic, selectedDateTime, availableTimeSlots) {
          // Group time slots by date
          final slotsByDate = <DateTime, List<DateTime>>{};
          for (final slot in availableTimeSlots) {
            final date = DateTime(slot.year, slot.month, slot.day);
            slotsByDate.putIfAbsent(date, () => []).add(slot);
          }

          final sortedDates = slotsByDate.keys.toList()..sort();

          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(14),
                  children: [
                    // Topic selection section
                    AppCard(
                      color: AppColors.base0,
                      contentPadding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Выберите тему',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.carbonFiber,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: master.topics.isEmpty
                                ? [
                                    const Text(
                                      'Нет доступных тем',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.base60,
                                      ),
                                    ),
                                  ]
                                : master.topics.map((topic) {
                                    return LabelButton(
                                      label: topic,
                                      isActive: selectedTopic == topic,
                                      onTap: () => ref
                                          .read(
                                            MastersDi.bookingProvider.notifier,
                                          )
                                          .selectTopic(topic),
                                    );
                                  }).toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    // Time selection section
                    AppCard(
                      color: AppColors.base0,
                      contentPadding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Выберите время',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.carbonFiber,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ...sortedDates.map((date) {
                            final slots = slotsByDate[date]!..sort();
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _formatDate(date),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.base60,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: slots.map((slot) {
                                    final isSelected =
                                        selectedDateTime != null &&
                                        selectedDateTime.year == slot.year &&
                                        selectedDateTime.month == slot.month &&
                                        selectedDateTime.day == slot.day &&
                                        selectedDateTime.hour == slot.hour &&
                                        selectedDateTime.minute == slot.minute;
                                    return LabelButton(
                                      label: _formatTime(slot),
                                      isActive: isSelected,
                                      onTap: () => ref
                                          .read(
                                            MastersDi.bookingProvider.notifier,
                                          )
                                          .selectDateTime(slot),
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(height: 16),
                              ],
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Selected info and submit button
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColors.fairway,
                  border: Border(
                    top: BorderSide(color: AppColors.unicornSilver),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (selectedTopic != null || selectedDateTime != null)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
                        child: AppCard(
                          color: AppColors.base0,
                          contentPadding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (selectedTopic != null) ...[
                                Row(
                                  children: [
                                    const Text(
                                      'Тема: ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.base60,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        selectedTopic,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.carbonFiber,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (selectedDateTime != null)
                                  const SizedBox(height: 8),
                              ],
                              if (selectedDateTime != null)
                                Row(
                                  children: [
                                    const Text(
                                      'Время: ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.base60,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${_formatDate(selectedDateTime)} в ${_formatTime(selectedDateTime)}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.carbonFiber,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        14.0,
                        (selectedTopic != null || selectedDateTime != null)
                            ? 14.0
                            : 14.0,
                        14.0,
                        24.0,
                      ),
                      child: MainButton(
                        child: const Text(
                          'Записаться',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.fairway,
                          ),
                        ),
                        onPressed: () {
                          ref.read(MastersDi.bookingProvider.notifier).submitBooking().then((
                            success,
                          ) {
                            if (success && mounted) {
                              // Invalidate notes provider to refresh the list
                              ref.invalidate(NotesDi.notesProvider);
                              // Show success dialog with booking details
                              final bookingState = ref.read(
                                MastersDi.bookingProvider,
                              );
                              bookingState.maybeWhen(
                                resolved: (master, selectedTopic, selectedDateTime, _) {
                                  showDialog<void>(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text('Успешно!'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Вы успешно записались на занятие',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          _buildDialogRow(
                                            'Преподаватель:',
                                            '${master.firstName} ${master.lastName}',
                                          ),
                                          const SizedBox(height: 8),
                                          _buildDialogRow(
                                            'Тема:',
                                            selectedTopic ?? '',
                                          ),
                                          const SizedBox(height: 8),
                                          if (selectedDateTime != null)
                                            _buildDialogRow(
                                              'Время:',
                                              '${_formatDate(selectedDateTime)} в ${_formatTime(selectedDateTime)}',
                                            ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(
                                              context,
                                            ).pop(); // Close dialog
                                            Navigator.of(
                                              context,
                                            ).pop(); // Close booking page
                                          },
                                          child: const Text('ОК'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                orElse: () {},
                              );
                            }
                          });
                        },
                        disabled:
                            selectedTopic == null || selectedDateTime == null,
                        type: MainButtonType.secondary,
                        starSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));
    final dateOnly = DateTime(date.year, date.month, date.day);

    if (dateOnly == today) {
      return 'Сегодня';
    } else if (dateOnly == tomorrow) {
      return 'Завтра';
    } else {
      return DateFormat('EEEE, d MMMM', 'ru_RU').format(date);
    }
  }

  String _formatTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  Widget _buildDialogRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.base60,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.carbonFiber,
            ),
          ),
        ),
      ],
    );
  }
}
