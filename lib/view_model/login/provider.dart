import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store/data/dio_providers.dart';
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
      final apiService = ref.read(apiServiceProvider);
      final users = await apiService.getUsers();

      final user = users.firstWhere(
        (u) => u.email == email && u.password == password,
        orElse: () => throw Exception('Invalid email or password'),
      );

      state = state.copyWith(
        status: LoginStatus.success,
        isLoggedIn: true,
        isShop: user.isShop,
        selectedShopId: user.shopId,
      );
    } catch (e) {
      state = state.copyWith(
        status: LoginStatus.error,
        errorMessage: "Error: ${e.toString()}",
      );
    }
  }

  void logout() {
    state = const LoginViewModelState();
  }

  void enterShopMode(String shopId) {
    state = state.copyWith(isShop: true, selectedShopId: shopId);
  }

  void enterBuyerMode() {
    state = state.copyWith(isShop: false, selectedShopId: null);
  }
}
