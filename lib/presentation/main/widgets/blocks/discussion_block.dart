import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/buttons/label_button.dart';
import '../../../mock/mock_topic_button.dart';
import '../../providers/main_di.dart';

class DiscussionBlock extends ConsumerWidget {
  const DiscussionBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topicsState = ref.watch(MainDi.topicsProvider);

    return MenuBlock(
      title: 'Хочу обсудить',
      titlePadding: const EdgeInsets.only(bottom: 14.0, left: 14.0),
      titleStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: AppColors.boysenberryShadow,
        fontFamily: AppFonts.nyght,
      ),
      child: SizedBox(
        height: 64,
        child: topicsState.maybeWhen(
          orElse: () => ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            itemCount: 20,
            itemBuilder: (_, index) => const Align(
              alignment: Alignment.topCenter,
              child: MockTopicButton(),
            ),
            separatorBuilder: (_, __) => const SizedBox(width: 14),
          ),
          resolved: (topics) => ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            itemCount: topics.length,
            itemBuilder: (_, index) => Align(
              alignment: Alignment.topCenter,
              child: LabelButton(
                label: topics[index],
                spacing: 8,
                leading: const Icon(
                  Icons.cases_rounded,
                  size: 16,
                  color: AppColors.fairway,
                ),
                height: 32,
                disabledColor: AppColors.transparentBlue,
                elevation: 5.0,
              ),
            ),
            separatorBuilder: (_, __) => const SizedBox(width: 10),
          ),
        ),
      ),
    );
  }
}
