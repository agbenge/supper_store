import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ProfileSettingsViewModel extends _$ProfileSettingsViewModel {
  @override
  ProfileSettingsViewModelState build() {
    return const ProfileSettingsViewModelState();
  }

  void setNotificationsEnabled(bool value) {
    state = state.copyWith(notificationsEnabled: value);
  }

  void setDarkModeEnabled(bool value) {
    state = state.copyWith(darkModeEnabled: value);
  }

  void setLocationEnabled(bool value) {
    state = state.copyWith(locationEnabled: value);
  }

  void logout() {
    // Logic to logout
  }
}
