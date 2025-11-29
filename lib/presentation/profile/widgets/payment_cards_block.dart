import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';

class PaymentCardsBlock extends StatefulWidget {
  final List<PaymentCardModel> cards;

  final PaymentCardModel? initialSelectedCard;

  final void Function(PaymentCardModel cardNumber)? onSelect;

  const PaymentCardsBlock({
    required this.cards,
    super.key,
    this.initialSelectedCard,
    this.onSelect,
  });

  @override
  State<PaymentCardsBlock> createState() => _PaymentCardsBlockState();
}

class _PaymentCardsBlockState extends State<PaymentCardsBlock> {
  late PaymentCardModel? _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialSelectedCard;
  }

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    clipBehavior: Clip.hardEdge,
    child: ColoredBox(
      color: AppColors.base0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < widget.cards.length; i++) ...[
            _buildTile(
              card: widget.cards[i],
              isFirst: i == 0,
              isLast: i == widget.cards.length - 1,
            ),
            if (i < widget.cards.length - 1) _buildDivider(),
          ],
        ],
      ),
    ),
  );

  Widget _buildDivider() => const Divider(
    thickness: 1,
    height: 1,
    color: AppColors.base10,
    indent: 42,
    endIndent: 14,
  );

  Widget _buildTile({
    required PaymentCardModel card,
    bool isFirst = false,
    bool isLast = false,
  }) {
    final isSelected = card == _selected;

    return InkWell(
      onTap: () {
        setState(() => _selected = card);
        widget.onSelect?.call(card);
      },
      borderRadius: BorderRadius.vertical(
        top: isFirst ? const Radius.circular(12) : Radius.zero,
        bottom: isLast ? const Radius.circular(12) : Radius.zero,
      ),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              SvgPicture.asset(AppIcons.card2, width: 20, height: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: card.type,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.carbonFiber,
                            ),
                          ),
                          TextSpan(
                            text: ' *${card.number.substring(12, 16)}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.uniformGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'Способ оплаты',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.uniformGrey,
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                isSelected ? AppIcons.selectedCircle : AppIcons.emptyCircle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const testCards = <PaymentCardModel>[
  PaymentCardModel(type: 'Мир', number: '1111111111111111'),
  PaymentCardModel(type: 'Visa', number: '2222222222222222'),
  PaymentCardModel(type: 'Mastercard', number: '3333333333333333'),
  PaymentCardModel(type: 'Мир', number: '4444444444444444'),
  PaymentCardModel(type: 'Mastercard', number: '5555555555555555'),
];

class PaymentCardModel {
  final String type;
  final String number;

  const PaymentCardModel({required this.type, required this.number});
}
