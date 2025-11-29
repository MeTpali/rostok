import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../../core/constants/app_colors.dart';

class OtpInputField extends StatefulWidget {
  final int otpLength;
  final void Function(String code) onCodeCompleted;
  final String? initialCode;
  final OTPController? controller;
  final bool hasError;
  const OtpInputField({
    required this.otpLength,
    required this.onCodeCompleted,
    this.initialCode,
    this.controller,
    this.hasError = false,
    super.key,
  });

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> with CodeAutoFill {
  final List<TextEditingController> _controllers = [];
  final List<FocusNode> _focusNodes = [];
  final _focusNode = FocusNode();
  String? _lastInitialCode;

  @override
  void initState() {
    widget.controller?.addListener(() {
      if (widget.controller!.isShouldClearCode) {
        clearCode();
        widget.controller!.isShouldClearCode = false;
      }
    });
    listenForCode();
    for (int i = 0; i < widget.otpLength; i++) {
      _controllers.add(TextEditingController());
      _focusNodes.add(FocusNode());
    }
    if (widget.initialCode != null) {
      final initialCode = widget.initialCode!;
      applyCode(initialCode);
    }
    super.initState();
  }

  @override
  void codeUpdated() {
    if (code != null && code!.length == widget.otpLength) {
      applyCode(code!);
    }
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => checkIfInitialCodeProvided());

    final outlineNone = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(width: 0, style: BorderStyle.none),
    );
    final borderColor = widget.hasError
        ? Colors.red
        : AppColors.lightPeriwinkle;
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: (value) {
        if (value is! KeyDownEvent) return;

        if (value.logicalKey == LogicalKeyboardKey.backspace) {
          int focusedNodeIndex = -1;
          for (int i = 0; i < _focusNodes.length; i++) {
            if (_focusNodes[i].hasFocus) {
              focusedNodeIndex = i;
              break;
            }
          }
          if (focusedNodeIndex >= 1 &&
              _controllers[focusedNodeIndex].text.isEmpty) {
            _controllers[focusedNodeIndex - 1].clear();
            shiftFocus(focusedNodeIndex, false);
            setState(() {});
            return;
          }
        }
      },
      child: Row(
        children: [
          for (int i = 0; i < _controllers.length; i++) ...[
            Expanded(
              flex: 100,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.foundationWhite,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: borderColor, width: 1),
                  ),
                  child: Center(
                    child: TextField(
                      controller: _controllers[i],
                      focusNode: _focusNodes[i],
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      style: const TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: AppColors.fairway,
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: outlineNone,
                        focusedBorder: outlineNone,
                        enabledBorder: outlineNone,
                        errorBorder: outlineNone,
                        disabledBorder: outlineNone,
                        counterText: '',
                        filled: false,
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      onChanged: (value) {
                        if (value.length > 1) {
                          applyCode(value);
                          return;
                        }
                        checkIfCodeReady();
                        if (value.isNotEmpty) {
                          shiftFocus(i, true);
                        } else {
                          shiftFocus(i, false);
                        }
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
            ),
            if (i != widget.otpLength - 1)
              const Expanded(flex: 14, child: SizedBox()),
          ],
        ],
      ),
    );
  }

  void checkIfInitialCodeProvided() {
    if (widget.initialCode != _lastInitialCode && widget.initialCode != null) {
      _lastInitialCode = widget.initialCode;
      applyCode(_lastInitialCode!);
    }
  }

  void applyCode(String code) {
    clearCode();
    String newCode = code;
    if (code.length > widget.otpLength) {
      newCode = code.substring(0, widget.otpLength);
    }
    for (int i = 0; i < newCode.length; i++) {
      _controllers[i].text = newCode[i];
    }
    _focusNodes[newCode.length - 1].requestFocus();
    checkIfCodeReady();
  }

  void clearCode() {
    for (int i = 0; i < widget.otpLength; i++) {
      _controllers[i].clear();
    }
    _focusNodes[0].requestFocus();
  }

  void shiftFocus(int currentIndex, bool isForward) {
    final nextFocusIndex = isForward ? currentIndex + 1 : currentIndex - 1;
    if (nextFocusIndex >= 0 && nextFocusIndex < _focusNodes.length) {
      FocusScope.of(context).requestFocus(_focusNodes[nextFocusIndex]);
    }
  }

  void checkIfCodeReady() {
    String code = '';
    for (final controller in _controllers) {
      if (controller.text.isNotEmpty) {
        code += controller.text;
      } else {
        return;
      }
    }
    widget.onCodeCompleted(code);
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final focusNode in _focusNodes) {
      focusNode.dispose();
    }
    _focusNode.dispose();
    unawaited(cancel());
    unawaited(unregisterListener());
    super.dispose();
  }
}

class OTPController extends ChangeNotifier {
  bool isShouldClearCode = false;

  void clearCode() {
    isShouldClearCode = true;
    notifyListeners();
  }
}
