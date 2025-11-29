import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../routing/app_router.dart';
import '../../widgets/cards/payment_balanced_card.dart';
import '../../widgets/payment_cards_block.dart';

@RoutePage()
class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    backgroundColor: AppColors.base0,
    appBar: SimpleAppBar(
      title: 'Способ оплаты',
      mediaQuery: MediaQuery.of(context),
      showBackButton: true,
      clipRRect: true,
    ),
    body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.fairway,
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
        children: [
          PaymentBalanceCard(
            prana: '1000',
            onTap: () => context.router.push(const AddBalancedRoute()),
          ),
          const SizedBox(height: 14),
          PaymentCardsBlock(
            cards: testCards,
            initialSelectedCard: testCards.first,
            onSelect: (card) {
              // TODO: выбор карты
            },
          ),
          const SizedBox(height: 14.0),
          MainButton(
            type: MainButtonType.tertiary,
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, size: 24, color: AppColors.fairway),
                SizedBox(width: 4),
                Text(
                  'Добавить карту',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.fairway,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
