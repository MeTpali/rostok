import 'package:flutter/material.dart';

import '../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../../../core/widgets/tiles/select_tile.dart';

Future<T?> showSelectionSheet<T>({
  required BuildContext context,
  required String title,
  required List<T> options,
  required T current,
  required String Function(T) labelOf,
  bool showBackButton = false,
}) => showModalBottomSheet<T>(
  context: context,
  isScrollControlled: true,
  backgroundColor: Colors.transparent,
  builder: (_) => AppBottomSheet(
    title: title,
    showBackButton: showBackButton,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 4),
        ...List.generate(options.length, (i) {
          final opt = options[i];
          final selected = opt == current;

          return Padding(
            padding: EdgeInsets.only(top: i == 0 ? 0 : 12),
            child: SelectTile(
              title: labelOf(opt),
              isSelected: selected,
              onSelect: () => Navigator.of(context).pop(opt),
            ),
          );
        }),
        const SizedBox(height: 24),
      ],
    ),
  ),
);
