import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';

class PaymentMethodCard extends StatefulWidget {
  final String cardNumber;
  final VoidCallback? onTap;
  final void Function(String)? onApplyPromo;
  final double height;

  const PaymentMethodCard({
    required this.cardNumber,
    super.key,
    this.onTap,
    this.onApplyPromo,
    this.height = 128,
  });

  @override
  State<PaymentMethodCard> createState() => _PaymentMethodCardState();
}

class _PaymentMethodCardState extends State<PaymentMethodCard> {
  final _promoCtrl = TextEditingController();

  @override
  void dispose() {
    _promoCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final body = Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopRow(),
          const SizedBox(height: 12),
          _buildPromoField(),
        ],
      ),
    );

    final card = Container(
      decoration: BoxDecoration(
        color: AppColors.base0,
        borderRadius: BorderRadius.circular(14),
      ),
      child: body,
    );

    final sized = SizedBox(height: widget.height, child: card);

    if (widget.onTap != null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: widget.onTap,
          child: sized,
        ),
      );
    }
    return sized;
  }

  Widget _buildTopRow() => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCardNumber(),
            const SizedBox(height: 4),
            _buildSubtitle(),
          ],
        ),
      ),
      _buildRightIcon(),
    ],
  );

  Widget _buildCardNumber() => Text(
    widget.cardNumber,
    style: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.base100,
    ),
  );

  Widget _buildSubtitle() => const Text(
    'Способ оплаты',
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.base60,
    ),
  );

  Widget _buildRightIcon() =>
      SvgPicture.asset(AppIcons.card2, width: 20, height: 20);

  Widget _buildPromoField() => SizedBox(
    height: 44,
    child: TextField(
      controller: _promoCtrl,
      textInputAction: TextInputAction.done,
      onSubmitted: (_) => _applyPromo(),
      style: const TextStyle(fontSize: 14, color: AppColors.base100),
      decoration: InputDecoration(
        hintText: 'Введите промокод',
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.base40,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        filled: true,
        fillColor: AppColors.base0,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.base20),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.base20),
        ),
        suffixIcon: SizedBox(
          width: 20,
          height: 20,
          child: Center(
            child: AppIconButton(
              onPressed: _applyPromo,
              iconSize: 8,
              backgroundColor: Colors.transparent,
              iconPadding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                AppIcons.arrowRight,
                width: 20,
                height: 20,
                colorFilter: const ColorFilter.mode(
                  AppColors.base100,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );

  void _applyPromo() {
    final text = _promoCtrl.text.trim();
    widget.onApplyPromo?.call(text);
  }
}
