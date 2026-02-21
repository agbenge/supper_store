import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/profile_and_shop_services/provider.dart';
import '../../view_model/profile_and_shop_services/state.dart';

class ProfileAndShopServicesScreen extends ConsumerWidget {
  const ProfileAndShopServicesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(profileAndShopServicesViewModelProvider);
    final user = viewModelState.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => Navigator.pushNamed(context, '/profile_settings'),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/profile_details'),
            child: const Row(
              children: [
                Icon(Icons.edit, color: Colors.blue),
                SizedBox(width: 4),
                Text('Edit', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/profile_details'),
              borderRadius: BorderRadius.circular(24),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(user.profileImageUrl),
                          ),
                          const Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.camera_alt, size: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        user.name,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        user.phone,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Personal Information
            Text(
              'Personal Information',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey[500],
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.blue),
                    title: Text(
                      'Current Address',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    subtitle: Text(user.currentAddress),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.home, color: Colors.blue),
                    title: Text(
                      'Permanent Address',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    subtitle: Text(user.permanentAddress),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.mail, color: Colors.blue),
                    title: Text(
                      'Email Address',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    subtitle: Text(user.email),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // My Shop Services
            Text(
              'My Shop Services',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey[500],
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 12),
            ...viewModelState.shops.map((shop) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Card(
                child: ListTile(
                  leading: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(shop.icon, color: Colors.blue),
                  ),
                  title: Text(shop.name),
                  subtitle: Text(shop.description),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushNamed(context, '/shop_management'),
                ),
              ),
            )).toList(),
            const SizedBox(height: 12),
            // Create New Shop Button
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/shop_create_new'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle),
                  SizedBox(width: 8),
                  Text('Create New Shop'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}