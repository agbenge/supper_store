import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/profile_settings/provider.dart';

class ProfileSettingsScreen extends ConsumerWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(profileSettingsViewModelProvider);
    final viewModel = ref.read(profileSettingsViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Account'),
            _buildSettingTile(
              Icons.person_outline, 
              'Personal Information', 
              'Update your name and contact details',
              onTap: () => Navigator.pushNamed(context, '/profile_details'),
            ),
            _buildSettingTile(
              Icons.lock_outline, 
              'Security', 
              'Password and authentication settings',
              onTap: () {},
            ),
            _buildSettingTile(
              Icons.payment_outlined, 
              'Payment Methods', 
              'Manage your saved cards and wallets',
              onTap: () {},
            ),
            
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: Divider()),

            _buildSectionTitle('Preferences'),
            _buildSwitchTile(
              Icons.notifications_none, 
              'Push Notifications', 
              'Receive alerts about your orders',
              viewModelState.notificationsEnabled,
              viewModel.setNotificationsEnabled,
            ),
            _buildSwitchTile(
              Icons.dark_mode_outlined, 
              'Dark Mode', 
              'Switch between light and dark themes',
              viewModelState.darkModeEnabled,
              viewModel.setDarkModeEnabled,
            ),
            _buildSwitchTile(
              Icons.location_on_outlined, 
              'Location Services', 
              'Enable for better shop discovery',
              viewModelState.locationEnabled,
              viewModel.setLocationEnabled,
            ),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: Divider()),

            _buildSectionTitle('Support'),
            _buildSettingTile(Icons.help_outline, 'Help Center', 'FAQs and customer support'),
            _buildSettingTile(Icons.info_outline, 'About Store App', 'Version 1.0.0'),
            
            const SizedBox(height: 32),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: viewModel.logout,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 54),
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Logout', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }

  Widget _buildSettingTile(IconData icon, String title, String subtitle, {VoidCallback? onTap}) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(8)),
        child: Icon(icon, color: Colors.blue, size: 20),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildSwitchTile(IconData icon, String title, String subtitle, bool value, ValueChanged<bool> onChanged) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(8)),
        child: Icon(icon, color: Colors.blue, size: 20),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.blue,
      ),
    );
  }
}
