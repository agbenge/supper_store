class ProfileDetailsViewModelState {
  final String fullName;
  final String email;
  final String phone;
  final String address;
  final String gender;
  final String dob;
  final String memberSince;
  final bool isVerified;
  final String profileImageUrl;

  const ProfileDetailsViewModelState({
    this.fullName = '',
    this.email = '',
    this.phone = '',
    this.address = '',
    this.gender = '',
    this.dob = '',
    this.memberSince = '',
    this.isVerified = false,
    this.profileImageUrl = '',
  });

  ProfileDetailsViewModelState copyWith({
    String? fullName,
    String? email,
    String? phone,
    String? address,
    String? gender,
    String? dob,
    String? memberSince,
    bool? isVerified,
    String? profileImageUrl,
  }) {
    return ProfileDetailsViewModelState(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
      memberSince: memberSince ?? this.memberSince,
      isVerified: isVerified ?? this.isVerified,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
    );
  }
}
