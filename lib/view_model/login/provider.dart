import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginViewModelState build() => const LoginViewModelState();

  void togglePasswordVisibility() {
    state = state.copyWith(obscurePassword: !state.obscurePassword);
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(status: LoginStatus.loading);
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      state = state.copyWith(status: LoginStatus.success);
    } catch (e) {
      state = state.copyWith(status: LoginStatus.error, errorMessage: e.toString());
    }
  }
}
