enum LoginStatus { initial, loading, success, error }

class LoginViewModelState {
  final LoginStatus status;
  final String? errorMessage;
  final bool obscurePassword;
  final bool isLoggedIn;
  final bool isShop;
  final String? selectedShopId;

  const LoginViewModelState({
    this.status = LoginStatus.initial,
    this.errorMessage,
    this.obscurePassword = true,
    this.isLoggedIn = false,
    this.isShop = false,
    this.selectedShopId,
  });

  LoginViewModelState copyWith({
    LoginStatus? status,
    String? errorMessage,
    bool? obscurePassword,
    bool? isLoggedIn,
    bool? isShop,
    String? selectedShopId,
  }) {
    return LoginViewModelState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      isShop: isShop ?? this.isShop,
      selectedShopId: selectedShopId ?? this.selectedShopId,
    );
  }
}
