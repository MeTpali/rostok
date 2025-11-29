import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../widgets/text_fields/otp_input_field.dart';

Future<bool?> showCodeInputSheet({
  required BuildContext context,
  required String phoneNumber,
  required Future<bool> Function(String code) onVerify,
  required Future<void> Function() onResend,
  int otpLength = 4,
  int initialSeconds = 60,
}) => showModalBottomSheet<bool>(
  context: context,
  isScrollControlled: true,
  backgroundColor: Colors.transparent,
  builder: (_) => _CodeInputSheet(
    phoneNumber: phoneNumber,
    otpLength: otpLength,
    onVerify: onVerify,
    onResend: onResend,
    initialSeconds: initialSeconds,
  ),
);

class _CodeInputSheet extends StatefulWidget {
  final String phoneNumber;
  final int otpLength;
  final Future<bool> Function(String code) onVerify;
  final Future<void> Function() onResend;
  final int initialSeconds;

  const _CodeInputSheet({
    required this.phoneNumber,
    required this.otpLength,
    required this.onVerify,
    required this.onResend,
    required this.initialSeconds,
  });

  @override
  State<_CodeInputSheet> createState() => _CodeInputSheetState();
}

class _CodeInputSheetState extends State<_CodeInputSheet>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late int _timeRemaining;
  bool _canResend = false;
  bool _verifying = false;

  bool _hasError = false;

  late final AnimationController _shakeCtrl =
      AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      )..addStatusListener((s) {
        if (s == AnimationStatus.completed) _shakeCtrl.reverse();
      });

  final Tween<Offset> _shakeTween = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.03, 0),
  );

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _shakeCtrl.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _canResend = false;
    _timeRemaining = widget.initialSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) return;
      setState(() {
        if (_timeRemaining > 0) {
          _timeRemaining--;
        } else {
          _canResend = true;
          t.cancel();
        }
      });
    });
    setState(() {});
  }

  Future<void> _handleResend() async {
    await widget.onResend();
    setState(() {
      _hasError = false;
    });
    _startTimer();
  }

  Future<void> _handleVerify(String code) async {
    if (_verifying) return;
    setState(() => _verifying = true);

    final ok = await widget.onVerify(code);

    if (!mounted) return;
    setState(() => _verifying = false);

    if (ok) {
      Navigator.of(context).pop(true);
    } else {
      setState(() => _hasError = true);
      await _shakeCtrl.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) => AppBottomSheet(
    titleWidget: const SizedBox.shrink(),
    showBackButton: true,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Введите код из сообщения',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.base100,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'Отправили на ${widget.phoneNumber}',
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.base100,
          ),
        ),

        const SizedBox(height: 16),

        SlideTransition(
          position: _shakeTween
              .chain(CurveTween(curve: Curves.elasticIn))
              .animate(_shakeCtrl),
          child: Container(
            child: OtpInputField(
              otpLength: widget.otpLength,
              onCodeCompleted: _handleVerify,
              hasError: _hasError,
            ),
          ),
        ),

        const SizedBox(height: 24),

        MainButton(
          type: MainButtonType.primary,
          height: 52,
          disabled: !_canResend,
          onPressed: _handleResend,
          child: Text(
            _canResend
                ? 'Выслать код повторно'
                : 'Выслать повторно можно через $_timeRemaining секунд',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: _canResend ? 14 : 13,
              fontWeight: _canResend ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ),

        const SizedBox(height: 40),
      ],
    ),
  );
}
