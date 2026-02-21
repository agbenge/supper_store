import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ProfileRegistrationViewModel extends _$ProfileRegistrationViewModel {
  @override
  ProfileRegistrationViewModelState build() {
    return const ProfileRegistrationViewModelState(
      currentCountry: 'Select Country',
      permanentCountry: 'Select Country',
    );
  }

  void setEmail(String value) => state = state.copyWith(email: value);
  void setPhone(String value) => state = state.copyWith(phone: value);
  void setCurrentCountry(String? value) => state = state.copyWith(currentCountry: value);
  void setCurrentState(String value) => state = state.copyWith(currentState: value);
  void setCurrentLga(String value) => state = state.copyWith(currentLga: value);
  void setCurrentAddress(String value) => state = state.copyWith(currentAddress: value);
  
  void setPermanentCountry(String? value) => state = state.copyWith(permanentCountry: value);
  void setPermanentState(String value) => state = state.copyWith(permanentState: value);
  void setPermanentLga(String value) => state = state.copyWith(permanentLga: value);
  void setPermanentAddress(String value) => state = state.copyWith(permanentAddress: value);

  void setSameAsCurrent(bool value) {
    if (value) {
      state = state.copyWith(
        sameAsCurrent: true,
        permanentCountry: state.currentCountry,
        permanentState: state.currentState,
        permanentLga: state.currentLga,
        permanentAddress: state.currentAddress,
      );
    } else {
      state = state.copyWith(sameAsCurrent: false);
    }
  }

  void submit() {
    // Logic to submit registration
  }
}
