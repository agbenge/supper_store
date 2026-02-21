import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';
import 'package:flutter/material.dart';

part 'provider.g.dart';

@riverpod
class ProfileAndShopServicesViewModel extends _$ProfileAndShopServicesViewModel {
  @override
  ProfileAndShopServicesViewModelState build() {
    return const ProfileAndShopServicesViewModelState(
      user: UserProfile(
        name: 'Alex Thompson',
        phone: '+1 (555) 012-3456',
        currentAddress: '742 Evergreen Terrace, Springfield, OR 97403',
        permanentAddress: '123 Maple Street, Portland, ME 04101',
        email: 'alex.t@example.com',
        profileImageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDHvV04JeNG6NJBLyz_SkA39Zc55N9zqMGoV3cpq-DhxdESd1wDKdIoUijYA9jmBZshwZWdAjzYG_NkU-2BcbSQU4XA8R1nqGYILcnSAdlk-eX5RwLDoWo7oEKesNuCxNpXcLJv7m6ePwaSZoBbhqbJkyxzApXoEfmc_6Uzzpo-3hXu7YIxq2ueY6Y7at0ZDp8ij5GKAnRPGul-0ciiqoVDvg28CkePKDRkwKCY7hdx_6ECOebZlgkBXQax1_xDOnmT9lFa-8LaDfo',
      ),
      shops: [
        ShopService(name: "Alex's Bakery", description: 'Fresh pastries & Pre-orders', icon: Icons.storefront),
        ShopService(name: 'Corner Coffee Hub', description: 'Artisan beans & Pickup', icon: Icons.local_cafe),
      ],
    );
  }
}
