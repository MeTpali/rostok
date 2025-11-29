import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_keys.dart';
import '../../../core/parsers/icon_color_mapper.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../../../core/widgets/formatters/time_input_formatter.dart';
import '../../../domain/usecases/universe_question/universe_question_use_case.dart';
import '../../../routing/app_router.dart';
import '../../profile/providers/profile_di.dart';
import '../widgets/selectors/date_menu_selector.dart';
import '../widgets/text_fields/universe_setting_text_field.dart';

@RoutePage()
class UniverseQuestionSettingsPage extends ConsumerStatefulWidget {
  const UniverseQuestionSettingsPage({super.key});

  @override
  ConsumerState<UniverseQuestionSettingsPage> createState() =>
      _UniverseQuestionSettingsPageState();
}

class _UniverseQuestionSettingsPageState
    extends ConsumerState<UniverseQuestionSettingsPage> {
  String _day = '';
  String _month = '';
  String _year = '';
  late final TextEditingController _timeController;
  late final TextEditingController _countryController;
  late final TextEditingController _cityController;
  late final TextEditingController _queryController;
  late final FocusNode _dayButtonFocusNode;
  late final FocusNode _monthButtonFocusNode;
  late final FocusNode _yearButtonFocusNode;
  bool readingStars = false;

  @override
  void initState() {
    super.initState();

    _init();
  }

  void _init() {
    final profile = ref
        .read(ProfileDi.profileProvider)
        .mapOrNull(authorized: (profile) => profile);
    _day = profile?.birthDate?.day.toString() ?? '';
    _month = profile?.birthDate?.month.toString() ?? '';
    _year = profile?.birthDate?.year.toString() ?? '';
    _timeController = TextEditingController(text: profile?.birthTime)
      ..addListener(_update);
    _countryController = TextEditingController(text: profile?.birthCountry)
      ..addListener(_update);
    _cityController = TextEditingController(text: profile?.birthCity)
      ..addListener(_update);
    _queryController = TextEditingController();

    _dayButtonFocusNode = FocusNode(debugLabel: 'Day Menu Button');
    _monthButtonFocusNode = FocusNode(debugLabel: 'Month Menu Button');
    _yearButtonFocusNode = FocusNode(debugLabel: 'Year Menu Button');
  }

  void _update() => setState(() {});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SimpleAppBar(
      title: 'Вопрос ко вселенной',
      mediaQuery: MediaQuery.of(context),
      showDivider: true,
      showBackButton: false,
    ),
    backgroundColor: AppColors.base0,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: ListView(
        children: [
          const SizedBox(height: 24),
          const Text(
            'Расскажите о себе',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.carbonFiber,
            ),
          ),
          const Text(
            'Чтобы получить более точный прогноз заполните данные',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.carbonFiber,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Дата рождения',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.kettleman,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    final month = _month;
                    int daysCount = 31;
                    if (['4', '6', '9', '11'].contains(month)) {
                      daysCount = 30;
                    }
                    if (month == '2') {
                      daysCount = 28;
                      final year = int.tryParse(_year) ?? 1;
                      if (year % 4 == 0) {
                        daysCount = 29;
                      }
                    }

                    return DateMenuSelector(
                      value: _day,
                      hint: 'День',
                      menuChildren: [
                        for (int i = 1; i <= daysCount; i++)
                          MenuItemButton(
                            onPressed: () => setState(() {
                              if (i < 10) {
                                _day = '0$i';
                              } else {
                                _day = i.toString();
                              }
                            }),
                            child: Text(i.toString()),
                          ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: DateMenuSelector(
                  value: _month,
                  hint: 'Месяц',
                  menuChildren: [
                    for (int i = 1; i <= 12; i++)
                      MenuItemButton(
                        onPressed: () => setState(() {
                          if (i < 10) {
                            _month = '0$i';
                          } else {
                            _month = i.toString();
                          }
                        }),
                        child: Text(i.toString()),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: DateMenuSelector(
                  value: _year,
                  hint: 'Год',
                  menuChildren: [
                    for (
                      int i = DateTime.now().year;
                      i >= DateTime.now().year - 100;
                      i--
                    )
                      MenuItemButton(
                        onPressed: () => setState(() {
                          _year = i.toString();
                        }),
                        child: Text(i.toString()),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            'Время рождения',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.kettleman,
            ),
          ),
          const SizedBox(height: 8),
          UniverseSettingTextField(
            controller: _timeController,
            hintText: 'Введите время рождения',
            keyboardType: TextInputType.number,
            inputFormatters: [TimeInputFormatter()],
            leading: SvgPicture.asset(
              AppIcons.alarm,
              height: 16,
              width: 16,
              colorMapper: IconColorMapper.filled(
                color: _timeController.text.isEmpty
                    ? AppColors.uniformGrey
                    : AppColors.blueGenie,
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Страна и город',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.kettleman,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: UniverseSettingTextField(
                  controller: _countryController,
                  hintText: 'Страна',
                  leading: SvgPicture.asset(
                    AppIcons.globe,
                    height: 16,
                    width: 16,
                    colorMapper: IconColorMapper.filled(
                      color: _countryController.text.isEmpty
                          ? AppColors.uniformGrey
                          : AppColors.blueGenie,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: UniverseSettingTextField(
                  controller: _cityController,
                  hintText: 'Город',
                  leading: SvgPicture.asset(
                    AppIcons.globe,
                    height: 16,
                    width: 16,
                    colorMapper: IconColorMapper.filled(
                      color: _cityController.text.isEmpty
                          ? AppColors.uniformGrey
                          : AppColors.blueGenie,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const Text(
            'Ваш вопрос',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.kettleman,
            ),
          ),
          const SizedBox(height: 8),
          UniverseSettingTextField(
            controller: _queryController,
            hintText: 'Что хотите спросить у Вселенной?',
            isQuery: true,
          ),
          const SizedBox(height: 24),
          Opacity(
            opacity: readingStars ? 0.6 : 1,
            child: MainButton(
              contentPadding: const EdgeInsetsGeometry.symmetric(
                vertical: 14.0,
              ),
              disabled: readingStars,
              type: MainButtonType.primary,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AppIcons.star1,
                    height: 24,
                    width: 24,
                    colorMapper: IconColorMapper(
                      fillColor: readingStars
                          ? AppColors.boysenberryShadow
                          : AppColors.base0,
                    ),
                  ),
                  Text(
                    readingStars ? 'Читаем звёзды...' : 'Отправить запрос',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              onPressed: () async {
                setState(() {
                  readingStars = true;
                });

                const _universeQuestionUseCase = UniverseQuestionUseCase();

                final result = await _universeQuestionUseCase.call(
                  UniverseQuestionUseCaseParams(
                    query: _queryController.text.trim(),
                    day: int.tryParse(_day),
                    month: int.tryParse(_month),
                    year: int.tryParse(_year),
                    time: _timeController.text.trim(),
                    country: _countryController.text.trim(),
                    city: _cityController.text.trim(),
                  ),
                );

                setState(() {
                  readingStars = false;
                });

                if (!context.mounted) return;
                await result.when(
                  success: (answer) async =>
                      context.router.push(UniverseAnswerRoute(answer: answer)),
                  error: (error) async => AppKeys
                      .rootScaffoldMessengerKey
                      .currentState
                      ?.showSnackBar(SnackBar(content: Text(error))),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );

  void _removeListeners() {
    _timeController.removeListener(_update);
    _countryController.removeListener(_update);
    _cityController.removeListener(_update);
  }

  void _disposeFocusNodes() {
    _dayButtonFocusNode.dispose();
    _monthButtonFocusNode.dispose();
    _yearButtonFocusNode.dispose();
  }

  void _disposeControllers() {
    _timeController.dispose();
    _countryController.dispose();
    _cityController.dispose();
    _queryController.dispose();
    _dayButtonFocusNode.dispose();
    _monthButtonFocusNode.dispose();
    _yearButtonFocusNode.dispose();
  }

  @override
  void dispose() {
    _removeListeners();
    _disposeFocusNodes();
    _disposeControllers();
    super.dispose();
  }
}
