import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/background/page_background.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../domain/models/articles/topic/topic.dart';
import '../../../routing/app_router.dart';
import '../widgets/cards/topic_card.dart';

@RoutePage()
class SimpleArticlesPage extends StatelessWidget {
  final String title;
  final List<Topic> topics;
  const SimpleArticlesPage({
    required this.title,
    required this.topics,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SimpleAppBar(title: title, mediaQuery: MediaQuery.of(context)),
    backgroundColor: AppColors.base0,
    body: topics.isEmpty
        ? const _Empty()
        : ListView(
            children: [
              const SizedBox(height: 16.0),
              AppCard(
                color: AppColors.fairway,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 14.0,
                ),
                child: FlexibleWrap(
                  key: const ValueKey('resolved'),
                  spacing: 11,
                  runSpacing: 24,
                  children: [
                    for (final topic in topics)
                      SizedBox(
                        width: 165,
                        child: TopicCard(
                          title: topic.title,
                          description: topic.description,
                          onTap: () async =>
                              context.router.push(ArticleRoute(id: topic.id)),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
  );
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) => PageBackground.simple(
    child: LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 124,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: AppColors.base10,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      colorFilter: const ColorFilter.mode(
                        AppColors.base100,
                        BlendMode.srcIn,
                      ),
                      AppIcons.heart,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Список статей пуст',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'К сожалению мы не нашли подходящих статей.',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                MainButton(
                  width: double.infinity,
                  height: 48,
                  child: const Text(
                    'Назад',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async => context.router.maybePop(),
                  type: MainButtonType.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
