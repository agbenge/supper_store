import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ProfileDetailsViewModel extends _$ProfileDetailsViewModel {
  @override
  ProfileDetailsViewModelState build() {
    return const ProfileDetailsViewModelState(
      fullName: 'Johnathan Quency Doe',
      email: 'john.doe@example.com',
      phone: '+234 801 234 5678',
      address: '123 Business Way, Lagos Island, Lagos State',
      gender: 'Male',
      dob: 'October 15, 1990',
      memberSince: 'Jan 2024',
      isVerified: true,
      profileImageUrl: 'https://via.placeholder.com/150',
    );
  }

  void editProfile() {
    // Logic to edit profile
  }
}
