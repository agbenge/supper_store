import 'package:flutter/material.dart';
import 'package:store/screens/profile/profile_and_shop_services_screen.dart';

class ProfileAndShopServicesNotSignInScreen extends StatelessWidget {
  const ProfileAndShopServicesNotSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if(true)return ProfileAndShopServicesScreen();
    else
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile And Shop Services Not Sign In'),
      ),
      body: Center(
        child: Text('Profile And Shop Services Not Sign In Screen'),
      ),
    );
  }
}