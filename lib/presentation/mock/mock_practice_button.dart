import 'package:flutter/material.dart';

import '../../core/widgets/skeleton/app_skeleton.dart';

class MockPracticeButton extends StatelessWidget {
  final double iconSize;
  final double labelHeight;
  const MockPracticeButton({this.iconSize = 64, this.labelHeight = 17});

  @override
  Widget build(BuildContext context) => Column(
    spacing: 6,
    mainAxisSize: MainAxisSize.min,
    children: [
      AppSkeleton(height: iconSize, width: iconSize, borderRadius: 1000),
      AppSkeleton(height: labelHeight, width: 90, borderRadius: 4),
    ],
  );
}
