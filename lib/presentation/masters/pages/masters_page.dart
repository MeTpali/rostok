import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_bars/catalog_app_bar.dart';
import '../../../core/widgets/buttons/label_button.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../core/widgets/cards/master_card.dart';
import '../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../routing/app_router.dart';
import '../../main/providers/main_di.dart';
import '../providers/masters_di.dart';
import '../widgets/dialogs/sort_bottom_sheet.dart';
import '../widgets/pages/empty_masters_page.dart';

@RoutePage()
class MastersPage extends ConsumerStatefulWidget {
  final String? initialFilter;
  const MastersPage({this.initialFilter, super.key});

  @override
  ConsumerState<MastersPage> createState() => _MastersPageState();
}

class _MastersPageState extends ConsumerState<MastersPage> {
  final ScrollController _scrollController = ScrollController();
  String? selectedTopic;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _toggleSelectedTopic(widget.initialFilter),
    );
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 100 &&
        !isLoading) {
      if (ref.read(MastersDi.mastersProvider.notifier).hasNextPage) {
        unawaited(_loadMoreItems());
      }
    }
  }

  Future<void> _loadMoreItems() async {
    setState(() {
      isLoading = true;
    });
    if (!mounted) return;
    await ref.watch(MastersDi.mastersProvider.notifier).fetchNextPage();
    setState(() {
      isLoading = false;
    });
  }

  Future<void> _toggleSelectedTopic(String? topic) async {
    if (!mounted) return;
    final oldTopic = selectedTopic;
    setState(() {
      selectedTopic = topic;
    });

    final success = await ref
        .read(MastersDi.mastersProvider.notifier)
        .fetchMasters(topic: topic);
    if (!success) {
      setState(() {
        selectedTopic = oldTopic;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mastersState = ref.watch(MastersDi.mastersProvider);
    final topicsState = ref.watch(MainDi.topicsProvider);

    return Scaffold(
      appBar: CatalogAppBar(
        title: 'Каталог преподавателей',
        mediaQuery: MediaQuery.of(context),
        showBackButton: false,
        footerList: topicsState.maybeWhen(
          orElse: () => [],
          resolved: (topics) => topics
              .map(
                (topic) => LabelButton(
                  isActive: selectedTopic == topic,
                  label: topic,
                  spacing: 8,
                  leading: Icon(
                    Icons.family_restroom,
                    size: 16,
                    color: selectedTopic == topic
                        ? AppColors.base0
                        : AppColors.fairway,
                  ),
                  height: 32,
                  activeColor: AppColors.fairway,
                  disabledColor: AppColors.astronomer,
                  showActiveBorder: false,
                  activeLabelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.base0,
                  ),
                  disabledLabelStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.fairway,
                  ),
                  onTap: () => _toggleSelectedTopic(
                    selectedTopic != topic ? topic : null,
                  ),
                ),
              )
              .toList(),
        ),
        onTapSort: () async => mastersState.mapOrNull<Future<void>>(
          resolved: (masters) async {
            final sortType = await showSortBottomSheet(
              context: context,
              selectedType: masters.sortType,
            );

            if (!context.mounted) return;

            if (sortType != null) {
              ref
                  .read(MastersDi.mastersProvider.notifier)
                  .sortProducts(sortType);
            }
          },
        ),
      ),
      backgroundColor: AppColors.base0,
      body: mastersState.maybeMap(
        orElse: () => const EmptyMastersPage(),
        loading: (_) => ListView(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
          children: [
            FlexibleWrap(
              spacing: 7,
              runSpacing: 8,
              children: [
                for (int i = 0; i < 10; i++)
                  AppSkeleton(
                    height: 300,
                    width:
                        MediaQuery.of(context).size.width /
                        ((MediaQuery.of(context).size.width - 28) / 170 + 1),
                    borderRadius: 12,
                  ),
              ],
            ),
          ],
        ),
        resolved: (mastersState) {
          final masters = mastersState.sortType.sortProducts(
            mastersState.masters,
          );

          if (masters.isEmpty) return const EmptyMastersPage();

          return RefreshIndicator(
            onRefresh: () => _toggleSelectedTopic(selectedTopic),
            child: ListView(
              controller: _scrollController,
              children: [
                const SizedBox(height: 8),
                AppCard(
                  color: AppColors.fairway,
                  contentPadding: const EdgeInsets.all(14.0),
                  child: FlexibleWrap(
                    spacing: 7,
                    runSpacing: 8,
                    children: [
                      for (final master in masters)
                        MasterCard(
                          key: ValueKey(master.id),
                          width:
                              MediaQuery.of(context).size.width /
                              ((MediaQuery.of(context).size.width - 28) / 165 +
                                  1),
                          name: '${master.firstName} ${master.lastName}',
                          prana: master.prana,
                          rating: master.rating,
                          reviewsCount: master.reviewsCount,
                          url: master.url,
                          description: master.description,
                          timing: master.timing,
                          onTap: () async =>
                              context.router.push(MasterRoute(id: master.id)),
                          onBook: () {},
                          isFavorite:
                              ref
                                  .watch(MastersDi.facouriteMastersProvider)
                                  .indexWhere((m) => m.id == master.id) !=
                              -1,
                          onFavoriteToggle: () => ref
                              .read(MastersDi.facouriteMastersProvider.notifier)
                              .toggleFavorite(master.id),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                if (isLoading) const Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }
}
