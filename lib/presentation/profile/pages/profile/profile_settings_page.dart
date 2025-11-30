import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../providers/profile_di.dart';
import '../../widgets/cards/activities_card.dart';
import '../../widgets/dialogs/profile_avatar_action_sheet.dart';
import '../../widgets/profile_main_info.dart';

@RoutePage()
class ProfileSettingsPage extends ConsumerWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ProfileDi.profileProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.base0,
      appBar: SimpleAppBar(
        title: 'Настройки профиля',
        mediaQuery: MediaQuery.of(context),
        clipRRect: true,
      ),
      body: state.map(
        unauthorized: (_) => const Center(child: CircularProgressIndicator()),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        error: (_) => const Center(child: CircularProgressIndicator()),
        authorized: (s) {
          final name = [
            s.firstName,
            s.lastName,
          ].where((e) => e.isNotEmpty).join(' ').trim();

          return ListView(
            children: [
              Center(
                child: ProfileMainInfo(
                  avatarUrl: s.avatarUrl ?? '',
                  name: name.isEmpty ? 'Без имени' : name,
                  birthDate: s.birthDate != null
                      ? DateFormat('dd.MM.yyyy', 'ru_RU').format(s.birthDate!)
                      : '',
                  birthTime: s.birthTime ?? '',
                  phone: s.phone,
                  badges: const ['Гений', 'Миллиардер', 'Плейбой'],
                  onEditAvatar: () =>
                      showProfileSettingsSheet(context: context),
                ),
              ),
              const SizedBox(height: 16),
              const ActivitiesCard(),
            ],
          );
        },
      ),
    );
  }
}
