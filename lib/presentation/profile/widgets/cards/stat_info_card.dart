import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';

class StatInfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Widget? trailingIcon;
  final List<Widget> Function(Size size)? bgIconsBuilder;
  final double height;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  final VoidCallback? onTap;

  const StatInfoCard({
    required this.title,
    required this.value,
    super.key,
    this.trailingIcon,
    this.bgIconsBuilder,
    this.height = 83,
    this.padding = const EdgeInsets.all(14),
    this.borderRadius = const BorderRadius.all(Radius.circular(14)),
    this.backgroundColor = AppColors.base0,
    this.titleStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.base100,
    ),
    this.valueStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: AppColors.fairway,
    ),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final base = Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: titleStyle),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(value, style: valueStyle),
                      if (trailingIcon != null) ...[
                        const SizedBox(width: 6),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: trailingIcon!,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    final content = onTap != null
        ? Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: borderRadius,
              child: base,
            ),
          )
        : base;

    return SizedBox(
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: LayoutBuilder(
          builder: (context, c) {
            final size = Size(c.maxWidth, c.maxHeight);
            return Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                content,
                if (bgIconsBuilder != null)
                  IgnorePointer(child: Stack(children: bgIconsBuilder!(size))),
              ],
            );
          },
        ),
      ),
    );
  }
}
