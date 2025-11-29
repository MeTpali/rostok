import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class AuthCheckbox extends StatefulWidget {
  const AuthCheckbox({
    required this.value,
    required this.onChanged,
    super.key,
    this.showError = false,
    this.labelText =
        'Подтверждаю, что я ознакомлен(а) и согласен(а) с условиями оферты и обработки персональных данных',
    this.textStyle = const TextStyle(
      color: AppColors.base100,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.3,
    ),
    this.checkboxSize = 15,
    this.horizontalGap = 8,
    this.shakeOffset = 8,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final bool showError;
  final String labelText;
  final TextStyle textStyle;
  final double checkboxSize;
  final double horizontalGap;
  final double shakeOffset;

  @override
  State<AuthCheckbox> createState() => _AuthCheckboxState();
}

class _AuthCheckboxState extends State<AuthCheckbox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _shakeController;
  late final Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _shakeAnimation = TweenSequence<double>(
      [
        TweenSequenceItem(tween: Tween(begin: 0, end: -1), weight: 1),
        TweenSequenceItem(tween: Tween(begin: -1, end: 1), weight: 2),
        TweenSequenceItem(tween: Tween(begin: 1, end: -1), weight: 2),
        TweenSequenceItem(tween: Tween(begin: -1, end: 0), weight: 1),
      ],
    ).animate(CurvedAnimation(parent: _shakeController, curve: Curves.easeOut));

    if (widget.showError) {
      _shakeController.forward(from: 0);
    }
  }

  @override
  void didUpdateWidget(covariant AuthCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.showError && !_shakeController.isAnimating) {
      _shakeController.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _shakeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scale = widget.checkboxSize / 18.0;

    return AnimatedBuilder(
      animation: _shakeAnimation,
      builder: (ctx, child) => Transform.translate(
        offset: Offset(
          widget.showError ? _shakeAnimation.value * widget.shakeOffset : 0,
          0,
        ),
        child: child,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(
              padding: const EdgeInsets.all(1.5),

              child: Transform.scale(
                scale: scale,
                alignment: Alignment.topLeft,
                child: Checkbox(
                  value: widget.value,
                  onChanged: (v) => widget.onChanged(v ?? false),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: const VisualDensity(
                    horizontal: -4,
                    vertical: -4,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: widget.horizontalGap),
          Expanded(
            child: GestureDetector(
              onTap: () => widget.onChanged(!widget.value),
              child: Text(widget.labelText, style: widget.textStyle),
            ),
          ),
        ],
      ),
    );
  }
}
