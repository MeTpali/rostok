import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';

class KnowledgeBaseSelector extends StatelessWidget {
  final int id;
  final String name;
  final bool isSelected;
  final VoidCallback? onTap;
  const KnowledgeBaseSelector({
    required this.id,
    required this.name,
    required this.isSelected,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Opacity(
      opacity: isSelected ? 1.0 : 0.35,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.brilliance)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 4.0),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.brilliance,
            ),
          ),
        ),
      ),
    ),
  );
}

class EmptyKnowledgeBaseSelector extends StatelessWidget {
  const EmptyKnowledgeBaseSelector({super.key});

  @override
  Widget build(BuildContext context) => const DecoratedBox(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.brilliance)),
    ),
    child: Padding(
      padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 4.0),
      child: AppSkeleton(height: 17, width: 80, borderRadius: 4),
    ),
  );
}
