import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/widgets/background/page_background.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../widgets/decoding_card.dart';

@RoutePage()
class DayCardPage extends StatelessWidget {
  final String card;
  final String description;
  const DayCardPage({required this.card, required this.description, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    resizeToAvoidBottomInset: false,
    body: PageBackground.dayCard(
      child: ListView(
        padding: EdgeInsets.only(
          top: 24.0 + MediaQuery.of(context).padding.top,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: DecodingCard(title: 'Расшифровка', description: description),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.5),
            child: MainButton(
              child: Row(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(AppIcons.share),
                  const Text(
                    'Поделиться',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              onPressed: () async {
                final text = '${card}\n$description';
                await SharePlus.instance.share(ShareParams(text: text));
              },
              type: MainButtonType.primary,
            ),
          ),
        ],
      ),
    ),
  );
}
