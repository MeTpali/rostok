import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.idle() = _Idle;

  const factory AuthState.sendingCode({required String phone}) = _SendingCode;

  const factory AuthState.codeSent({
    required String phone,
    required int expiresIn,
  }) = _CodeSent;

  const factory AuthState.verifyingCode({required String phone}) =
      _VerifyingCode;

  const factory AuthState.authorized({
    required String token,
    int? userId,
    String? userUuid,
  }) = _Authorized;

  const factory AuthState.error({required String message, String? phone}) =
      _Error;
}
