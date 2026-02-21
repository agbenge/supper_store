class ProfileSettingsViewModelState {
  final bool notificationsEnabled;
  final bool darkModeEnabled;
  final bool locationEnabled;

  const ProfileSettingsViewModelState({
    this.notificationsEnabled = true,
    this.darkModeEnabled = false,
    this.locationEnabled = true,
  });

  ProfileSettingsViewModelState copyWith({
    bool? notificationsEnabled,
    bool? darkModeEnabled,
    bool? locationEnabled,
  }) {
    return ProfileSettingsViewModelState(
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      darkModeEnabled: darkModeEnabled ?? this.darkModeEnabled,
      locationEnabled: locationEnabled ?? this.locationEnabled,
    );
  }
}
