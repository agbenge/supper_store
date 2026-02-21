import 'package:flutter/material.dart';

class UserProfile {
  final String name;
  final String phone;
  final String currentAddress;
  final String permanentAddress;
  final String email;
  final String profileImageUrl;

  const UserProfile({
    required this.name,
    required this.phone,
    required this.currentAddress,
    required this.permanentAddress,
    required this.email,
    required this.profileImageUrl,
  });
}

class ShopService {
  final String name;
  final String description;
  final IconData icon;

  const ShopService({
    required this.name,
    required this.description,
    required this.icon,
  });
}

class ProfileAndShopServicesViewModelState {
  final UserProfile user;
  final List<ShopService> shops;

  const ProfileAndShopServicesViewModelState({
    required this.user,
    this.shops = const [],
  });
}
