import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../providers/profile_di.dart';

class AvatarSettingBlock extends ConsumerWidget {
  final String? avatarUrl;
  const AvatarSettingBlock({required this.avatarUrl, super.key});

  bool get hasAvatar => (avatarUrl ?? '').isNotEmpty;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      ClipOval(
        child: SizedBox(
          width: 90,
          height: 90,
          child: hasAvatar
              ? Image.network(
                  avatarUrl!,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const ColoredBox(
                    color: AppColors.base10,
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: AppColors.base40,
                      ),
                    ),
                  ),
                )
              : const ColoredBox(
                  color: AppColors.base10,
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: AppColors.base40,
                    ),
                  ),
                ),
        ),
      ),
      const SizedBox(height: 12),
      GestureDetector(
        onTap: () => _pickAndUploadAvatar(context, ref),
        behavior: HitTestBehavior.opaque,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.camera,
              width: 16,
              height: 16,
              colorFilter: const ColorFilter.mode(
                AppColors.fairway,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              'Изменить фотографию',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.base60,
              ),
            ),
          ],
        ),
      ),
    ],
  );

  Future<void> _pickAndUploadAvatar(BuildContext context, WidgetRef ref) async {
    final picker = ImagePicker();
    final xFile = await picker.pickImage(source: ImageSource.gallery);
    if (xFile == null) return;

    final ok = await ref
        .read(ProfileDi.profileProvider.notifier)
        .uploadAvatar(xFile.path);

    if (!context.mounted) return;
    if (!ok) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не удалось загрузить фото')),
      );
      return;
    }
  }
}
