import 'package:flutter/material.dart';

import '../../core/widgets/skeleton/app_skeleton.dart';

class MockTopicButton extends StatelessWidget {
  const MockTopicButton();

  @override
  Widget build(BuildContext context) =>
      const AppSkeleton(height: 32, width: 86, borderRadius: 4);
}
