import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../core/widgets/buttons/label_button.dart';
import '../../../../core/widgets/cards/app_card.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../../core/widgets/text/expandable_text.dart';
import '../../../../core/widgets/types/bracing.dart';
import '../../../mock/mock_practice_button.dart';
import '../../../mock/mock_topic_button.dart';
import '../tiles/info_item_tile.dart';

class MasterInfoCard extends StatelessWidget {
  final String name;
  final bool online;
  final double rating;
  final int articlesCount;
  final int reviewsCount;
  final String descrption;
  final List<String> topics;
  final List<String> practices;
  const MasterInfoCard({
    required this.name,
    required this.online,
    required this.rating,
    required this.articlesCount,
    required this.reviewsCount,
    required this.descrption,
    this.topics = const <String>[],
    this.practices = const <String>[],
    super.key,
  });

  @override
  Widget build(BuildContext context) => AppCard(
    bracingType: BracingType.top,
    color: AppColors.base0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            spacing: 14,
            children: [
              Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.carbonFiber,
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.washMe,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: ColoredBox(
                          color: online
                              ? AppColors.formalGarden
                              : AppColors.base30,
                          child: const SizedBox(height: 8, width: 8),
                        ),
                      ),
                      Text(
                        online ? 'Онлайн' : 'Не в сети',
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.carbonFiber,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 84,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            children: [
              InfoItemTile.rating(rating: rating, label: 'Рейтинг'),
              const SizedBox(width: 12),
              InfoItemTile.number(
                number: articlesCount.toDouble(),
                label: 'Написано статей',
              ),
              const SizedBox(width: 12),
              InfoItemTile.number(
                number: reviewsCount.toDouble(),
                label: 'Отзывов и оценок',
              ),
            ],
          ),
        ),
        if (descrption.isNotEmpty) ...[
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              'О себе',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.carbonFiber,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: ExpandableText(
              text: descrption,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.carbonFiber,
              ),
            ),
          ),
        ],
        if (practices.isNotEmpty) ...[
          const SizedBox(height: 24),
          MenuBlock(
            title: 'Практики',
            titlePadding: const EdgeInsets.only(bottom: 14.0, left: 14.0),
            titleStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.carbonFiber,
            ),
            child: SizedBox(
              height: 91,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                itemCount: practices.length,
                itemBuilder: (_, index) => SizedBox(
                  width: 90,
                  child: AppIconButton(
                    icon: SvgPicture.asset(
                      AppIcons.sunface,
                      height: 42,
                      width: 42,
                    ),
                    iconPadding: const EdgeInsets.all(11.0),
                    backgroundColor: AppColors.whitePerl,
                    borderColor: AppColors.transparentBlue,
                    label: practices[index],
                    labelSpacing: 6.0,
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kettleman,
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 14),
              ),
            ),
          ),
        ],
        if (topics.isNotEmpty) ...[
          const SizedBox(height: 24),
          MenuBlock(
            title: 'Консультирую на темы',
            titlePadding: const EdgeInsets.only(bottom: 14.0, left: 14.0),
            titleStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.carbonFiber,
            ),
            child: SizedBox(
              height: 32,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                itemCount: topics.length,
                itemBuilder: (_, index) => Align(
                  alignment: Alignment.topCenter,
                  child: LabelButton(
                    isActive: true,
                    label: topics[index],
                    activeLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.fairway,
                    ),
                    spacing: 8,
                    leading: const Icon(
                      Icons.cases_rounded,
                      size: 16,
                      color: AppColors.fairway,
                    ),
                    height: 32,
                    activeColor: AppColors.whitePerl,
                    showActiveBorder: true,
                    activeBorder: const BorderSide(
                      color: AppColors.transparentBlue,
                    ),
                    onTap: () {},
                  ),
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 10),
              ),
            ),
          ),
        ],
        const SizedBox(height: 20),
      ],
    ),
  );
}

class LoadingMasterInfoCard extends StatelessWidget {
  const LoadingMasterInfoCard({super.key});

  @override
  Widget build(BuildContext context) => AppCard(
    bracingType: BracingType.top,
    color: AppColors.base0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            spacing: 14,
            children: [
              AppSkeleton(height: 20, width: 115, borderRadius: 4),
              AppSkeleton(height: 24, width: 65, borderRadius: 1000),
            ],
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 84,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            itemCount: 10,
            itemBuilder: (_, __) =>
                const AppSkeleton(height: 84, width: 84, borderRadius: 12),
            separatorBuilder: (_, __) => const SizedBox(width: 12),
          ),
        ),
        const SizedBox(height: 24),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: Text(
            'О себе',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.carbonFiber,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: LayoutBuilder(
            builder: (context, constraints) => Column(
              spacing: 3,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSkeleton(
                  height: 13,
                  width: constraints.maxWidth * 5 / 6,
                  borderRadius: 4,
                ),
                AppSkeleton(
                  height: 13,
                  width: constraints.maxWidth * 4 / 6,
                  borderRadius: 4,
                ),
                AppSkeleton(
                  height: 13,
                  width: constraints.maxWidth,
                  borderRadius: 4,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        MenuBlock(
          title: 'Практики',
          titlePadding: const EdgeInsets.only(bottom: 14.0, left: 14.0),
          titleStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.carbonFiber,
          ),
          child: SizedBox(
            height: 91,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              itemCount: 10,
              itemBuilder: (_, index) =>
                  const SizedBox(width: 90, child: MockPracticeButton()),
              separatorBuilder: (_, __) => const SizedBox(width: 14),
            ),
          ),
        ),
        const SizedBox(height: 24),
        MenuBlock(
          title: 'Консультирую на темы',
          titlePadding: const EdgeInsets.only(bottom: 14.0, left: 14.0),
          titleStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.carbonFiber,
          ),
          child: SizedBox(
            height: 32,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              itemCount: 10,
              itemBuilder: (_, index) => const Align(
                alignment: Alignment.topCenter,
                child: MockTopicButton(),
              ),
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
}
