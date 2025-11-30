import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/widgets/buttons/app_icon_button.dart';

class ProfileMainInfo extends StatelessWidget {
  final String? avatarUrl;
  final String name;
  final String birthDate;
  final String birthTime;
  final String phone;
  final List<String> badges;
  final VoidCallback? onEditAvatar;

  const ProfileMainInfo({
    required this.name,
    required this.birthDate,
    required this.birthTime,
    required this.phone,
    super.key,
    this.avatarUrl,
    this.badges = const ['Овен', 'Овен', 'Овен'],
    this.onEditAvatar,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      _buildAvatar(),
      const SizedBox(height: 24),
      _buildName(),
      const SizedBox(height: 8),
      _buildInfoLine(phone),
      const SizedBox(height: 24),
      _buildBadges(),
    ],
  );

  Widget _buildAvatar() => SizedBox(
    height: 90,
    width: 90,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: ClipOval(
            child: (avatarUrl == null || avatarUrl!.isEmpty)
                ? const ColoredBox(
                    color: AppColors.base20,
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 42,
                        color: AppColors.base40,
                      ),
                    ),
                  )
                : Image.network(
                    avatarUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const ColoredBox(
                      color: AppColors.base0,
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 42,
                          color: AppColors.base40,
                        ),
                      ),
                    ),
                  ),
          ),
        ),
        Positioned(
          right: -2,
          bottom: -2,
          child: SizedBox(
            width: 28,
            height: 28,
            child: AppIconButton(
              icon: const Icon(Icons.edit, size: 16, color: AppColors.base0),
              iconSize: 14,
              backgroundColor: AppColors.fairway,
              borderColor: AppColors.base0,
              onPressed: onEditAvatar,
            ),
          ),
        ),
      ],
    ),
  );

  Widget _buildName() => Text(
    name,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.base80,
    ),
  );

  Widget _buildInfoLine(String text) => Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.base50,
    ),
  );

  Widget _buildBadges() {
    final items = badges.take(3).toList();
    return Wrap(
      spacing: 8,
      runSpacing: 12,
      alignment: WrapAlignment.center,
      children: items.map(_buildBadge).toList(),
    );
  }

  Widget _buildBadge(String text) => Container(
    height: 32,
    decoration: BoxDecoration(
      color: AppColors.whitePerl,
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: AppColors.lightPeriwinkle, width: 1),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppIcons.family,
          width: 13,
          height: 13,
          colorFilter: const ColorFilter.mode(
            AppColors.fairway,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.fairway,
          ),
        ),
      ],
    ),
  );
}
