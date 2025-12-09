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
import '../providers/masters_di.dart';

@RoutePage()
class BookingPage extends ConsumerStatefulWidget {
  final int masterId;
  const BookingPage({required this.masterId, super.key});

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
        title: 'Запись на занятие',
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
        resolved:
            (master, selectedTopic, selectedDateTime, availableTimeSlots) {
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
                                                MastersDi
                                                    .bookingProvider
                                                    .notifier,
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
                                            selectedDateTime.year ==
                                                slot.year &&
                                            selectedDateTime.month ==
                                                slot.month &&
                                            selectedDateTime.day == slot.day &&
                                            selectedDateTime.hour ==
                                                slot.hour &&
                                            selectedDateTime.minute ==
                                                slot.minute;
                                        return LabelButton(
                                          label: _formatTime(slot),
                                          isActive: isSelected,
                                          onTap: () => ref
                                              .read(
                                                MastersDi
                                                    .bookingProvider
                                                    .notifier,
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
                  // Submit button
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: AppColors.fairway,
                      border: Border(
                        top: BorderSide(color: AppColors.unicornSilver),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        14.0,
                        14.0,
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
                          ref
                              .read(MastersDi.bookingProvider.notifier)
                              .submitBooking()
                              .then((success) {
                                if (success && mounted) {
                                  Navigator.of(context).pop();
                                }
                              });
                        },
                        disabled:
                            selectedTopic == null || selectedDateTime == null,
                        type: MainButtonType.secondary,
                        starSize: 20,
                      ),
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
}
