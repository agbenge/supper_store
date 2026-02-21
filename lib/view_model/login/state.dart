enum LoginStatus { initial, loading, success, error }

class LoginViewModelState {
  final LoginStatus status;
  final String? errorMessage;
  final bool obscurePassword;

  const LoginViewModelState({
    this.status = LoginStatus.initial,
    this.errorMessage,
    this.obscurePassword = true,
  });

  LoginViewModelState copyWith({
    LoginStatus? status,
    String? errorMessage,
    bool? obscurePassword,
  }) {
    return LoginViewModelState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      obscurePassword: obscurePassword ?? this.obscurePassword,
    );
  }
}
