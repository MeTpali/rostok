import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_keys.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../../../core/widgets/images/app_image.dart';
import '../../../../core/widgets/overlay/overlay_item.dart';
import '../../../../core/widgets/overlay/overlay_wrap.dart';
import '../../../../core/widgets/text/app_text_field.dart';
import '../../../../domain/models/articles/comment/comment.dart';
import '../../../profile/providers/profile_di.dart';
import '../../providers/articles_di.dart';
import '../tiles/comment_tile.dart';

class CommentsBottomSheet extends ConsumerStatefulWidget {
  final int articleId;
  const CommentsBottomSheet({required this.articleId, super.key});

  @override
  ConsumerState<CommentsBottomSheet> createState() =>
      _CommentsBottomSheetState();
}

class _CommentsBottomSheetState extends ConsumerState<CommentsBottomSheet> {
  late final FocusNode _focusNode;
  late final TextEditingController _textEditingController;
  bool isButtonActive = false;
  Comment? selectedComment;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
    _textEditingController = TextEditingController()
      ..addListener(_onMessageChanged);
  }

  void _onMessageChanged() => setState(() {
    isButtonActive = _textEditingController.text.trim().isNotEmpty;
  });

  void _selectComment(Comment comment) => setState(() {
    selectedComment = comment;
    final text = _textEditingController.text.trim();
    if (text.isEmpty) {
      _textEditingController.text = '${comment.sender}, ';
      _textEditingController.selection = TextSelection.collapsed(
        offset: comment.sender.length + 2,
      );
    }
    _focusNode.requestFocus();
  });

  void _onTapComment(Comment comment) {
    if (selectedComment == null) return;

    if (comment.id != selectedComment?.id) {
      _cancelAnswer();
    }
  }

  void _cancelAnswer() => setState(() {
    selectedComment = null;
  });

  void _toggleLoading() => setState(() {
    isLoading = !isLoading;
  });

  @override
  Widget build(BuildContext context) {
    final comments = ref.watch(ArticlesDi.commentsProvider);
    final profileState = ref.watch(ProfileDi.profileProvider);
    final imageUrl = profileState.maybeMap(
      orElse: () => '',
      authorized: (profile) => profile.avatarUrl ?? '',
    );

    return OverlayWrap(
      overlayItems: [
        OverlayItem(
          bottomOffset: MediaQuery.of(context).viewInsets.bottom,
          widget: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (selectedComment != null)
                ColoredBox(
                  color: AppColors.unicornSilver,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14.0,
                        vertical: 6.0,
                      ),
                      child: Row(
                        spacing: 8.0,
                        children: [
                          const Text(
                            'ответ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kettleman,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              selectedComment!.sender,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.carbonFiber,
                              ),
                            ),
                          ),
                          AppIconButton(
                            icon: const Icon(
                              Icons.close_rounded,
                              size: 14,
                              color: AppColors.kettleman,
                            ),
                            iconPadding: const EdgeInsets.all(3.0),
                            onPressed: _cancelAnswer,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: AppColors.unicornSilver),
                    ),
                    color: AppColors.brilliance,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 14.0,
                    ),
                    child: Row(
                      spacing: 8.0,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 40,
                          child: CircleAvatar(
                            child: AppImage(
                              url: imageUrl,
                              height: 40,
                              width: 40,
                              errorImage: SvgPicture.asset(
                                AppIcons.user,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: AppTextField(
                            maxHeight: 200,
                            minHeight: 44,
                            focusNode: _focusNode,
                            controller: _textEditingController,
                            multiLine: true,
                            hintText: 'Ваш комментарий',
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.uniformGrey,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14.0,
                              vertical: 13.5,
                            ),
                            backgroundColor: AppColors.base0,
                            border: Border.all(color: AppColors.unicornSilver),
                            fieldAlignment: Alignment.center,
                          ),
                        ),
                        AppIconButton(
                          icon: isLoading
                              ? const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: CircularProgressIndicator(),
                                )
                              : SvgPicture.asset(
                                  AppIcons.arrowUpCircle,
                                  colorMapper: IconColorMapper.filled(
                                    color: isButtonActive
                                        ? AppColors.fairway
                                        : AppColors.carbonFiber.withAlpha(75),
                                  ),
                                ),
                          onPressed: isButtonActive
                              ? () async {
                                  _toggleLoading();
                                  final result = await ref
                                      .read(
                                        ArticlesDi.commentsProvider.notifier,
                                      )
                                      .createComment(
                                        articleId: widget.articleId,
                                        text: _textEditingController.text
                                            .trim(),
                                        parentId: selectedComment?.id,
                                      );
                                  result.when(
                                    success: (_) {
                                      _textEditingController.text = '';
                                      _cancelAnswer();
                                    },
                                    error: (error) => AppKeys
                                        .rootScaffoldMessengerKey
                                        .currentState
                                        ?.showSnackBar(
                                          SnackBar(content: Text(error)),
                                        ),
                                  );
                                  _toggleLoading();
                                }
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      child: AppBottomSheet(
        title: 'Комментарии',
        showDivider: true,
        showBackButton: false,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 106.0),
          itemCount: comments.length,
          itemBuilder: (_, i) => CommentTile(
            comment: comments[i],
            selectedComments: [?selectedComment],
            shouldBlur: selectedComment != null,
            onAnswer: _selectComment,
            onTap: _onTapComment,
          ),
          separatorBuilder: (_, __) => const Divider(
            thickness: 1,
            height: 1,
            color: AppColors.unicornSilver,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onMessageChanged);
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
