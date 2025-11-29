import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_keys.dart';
import '../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../../../core/widgets/tiles/select_tile.dart';
import '../../providers/masters/masters_state.dart';

Future<SortType?> showSortBottomSheet({
  required BuildContext context,
  required SortType selectedType,
}) => showModalBottomSheet(
  context: AppKeys.rootScaffoldKey.currentContext ?? context,
  isScrollControlled: true,
  backgroundColor: Colors.transparent,
  builder: (context) => SortBottomSheet(selectedType: selectedType),
);

class SortBottomSheet extends StatelessWidget {
  final SortType selectedType;
  const SortBottomSheet({required this.selectedType, super.key});

  @override
  Widget build(BuildContext context) => AppBottomSheet(
    title: 'Показать сначала',
    showBackButton: false,
    child: Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final type in SortType.values)
          SelectTile(
            title: type.toString(),
            isSelected: selectedType == type,
            onSelect: () => context.router.maybePop(type),
          ),
        const SizedBox(height: 12),
      ],
    ),
  );
}
