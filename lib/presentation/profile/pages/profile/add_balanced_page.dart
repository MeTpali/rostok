import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../core/widgets/formatters/money_editing_formatter.dart';

@RoutePage()
class AddBalancedPage extends StatefulWidget {
  const AddBalancedPage({super.key});

  @override
  State<AddBalancedPage> createState() => _AddBalancedPageState();
}

class _AddBalancedPageState extends State<AddBalancedPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _setMoney(0);
  }

  void _setMoney(int value) {
    _controller.value = MoneyEditingFormatter().formatEditUpdate(
      _controller.value,
      TextEditingValue(
        text: value.toString(),
        selection: TextSelection.collapsed(offset: value.toString().length),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    backgroundColor: AppColors.fairway,
    appBar: SimpleAppBar(
      title: 'Пополнить баланс',
      mediaQuery: MediaQuery.of(context),
      showBackButton: true,
      clipRRect: false,
    ),
    body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 240,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.base0,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 89,
                    height: 22,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.base0,
                        borderRadius: BorderRadius.circular(1000),
                        border: const Border.fromBorderSide(
                          BorderSide(color: AppColors.unicornSilver),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '1 ₽ = 1 Прана',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.uniformGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  TextField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [MoneyEditingFormatter()],
                    decoration: const InputDecoration(border: InputBorder.none),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: AppColors.base100,
                    ),
                  ),

                  const SizedBox(height: 32),

                  Wrap(
                    spacing: 16,
                    runSpacing: 12,
                    children: [
                      _chip('+ 500', () => _setMoney(500)),
                      _chip('+ 1 000', () => _setMoney(1000)),
                      _chip('+ 2 000', () => _setMoney(2000)),
                      _chip('+ 5 000', () => _setMoney(5000)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: MainButton(
              type: MainButtonType.tertiary,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Пополнить через СБП',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.carbonFiber,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: SvgPicture.asset(
                      AppIcons.sbp,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget _chip(String text, VoidCallback onTap) => SizedBox(
    height: 32,
    child: OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.blueGenie,
        backgroundColor: AppColors.whitePerl,
        side: const BorderSide(color: AppColors.transparentBlue),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
      child: Text(text),
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
