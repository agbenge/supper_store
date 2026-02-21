class ProfileRegistrationViewModelState {
  final String email;
  final String phone;
  final String? currentCountry;
  final String currentState;
  final String currentLga;
  final String currentAddress;
  final String? permanentCountry;
  final String permanentState;
  final String permanentLga;
  final String permanentAddress;
  final bool sameAsCurrent;

  const ProfileRegistrationViewModelState({
    this.email = '',
    this.phone = '',
    this.currentCountry,
    this.currentState = '',
    this.currentLga = '',
    this.currentAddress = '',
    this.permanentCountry,
    this.permanentState = '',
    this.permanentLga = '',
    this.permanentAddress = '',
    this.sameAsCurrent = false,
  });

  ProfileRegistrationViewModelState copyWith({
    String? email,
    String? phone,
    String? currentCountry,
    String? currentState,
    String? currentLga,
    String? currentAddress,
    String? permanentCountry,
    String? permanentState,
    String? permanentLga,
    String? permanentAddress,
    bool? sameAsCurrent,
  }) {
    return ProfileRegistrationViewModelState(
      email: email ?? this.email,
      phone: phone ?? this.phone,
      currentCountry: currentCountry ?? this.currentCountry,
      currentState: currentState ?? this.currentState,
      currentLga: currentLga ?? this.currentLga,
      currentAddress: currentAddress ?? this.currentAddress,
      permanentCountry: permanentCountry ?? this.permanentCountry,
      permanentState: permanentState ?? this.permanentState,
      permanentLga: permanentLga ?? this.permanentLga,
      permanentAddress: permanentAddress ?? this.permanentAddress,
      sameAsCurrent: sameAsCurrent ?? this.sameAsCurrent,
    );
  }
}
