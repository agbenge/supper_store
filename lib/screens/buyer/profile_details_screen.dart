import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/profile_details/provider.dart';

class ProfileDetailsScreen extends ConsumerWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(profileDetailsViewModelProvider);
    final viewModel = ref.read(profileDetailsViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Profile Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            onPressed: viewModel.editProfile,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border(bottom: BorderSide(color: Colors.blue[100]!)),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(viewModelState.profileImageUrl),
                      ),
                      if (viewModelState.isVerified)
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(Icons.verified, color: Colors.blue, size: 24),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    viewModelState.fullName.split(' ').first, // Simplified name for header
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Member since ${viewModelState.memberSince}',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                ],
              ),
            ),

            // Detail List
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailItem('Full Name', viewModelState.fullName, Icons.person_outline),
                  _buildDetailItem('Email Address', viewModelState.email, Icons.email_outlined),
                  _buildDetailItem('Phone Number', viewModelState.phone, Icons.phone_android_outlined),
                  _buildDetailItem('Default Delivery Address', viewModelState.address, Icons.location_on_outlined),
                  _buildDetailItem('Gender', viewModelState.gender, Icons.wc_outlined),
                  _buildDetailItem('Date of Birth', viewModelState.dob, Icons.cake_outlined),
                  
                  const SizedBox(height: 32),
                  
                  const Text(
                    'Verification Status',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: viewModelState.isVerified ? Colors.green[50] : Colors.amber[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: viewModelState.isVerified ? Colors.green[100]! : Colors.amber[100]!),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          viewModelState.isVerified ? Icons.check_circle : Icons.pending, 
                          color: viewModelState.isVerified ? Colors.green : Colors.amber,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                viewModelState.isVerified ? 'Identity Verified' : 'Verification Pending',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  color: viewModelState.isVerified ? Colors.green : Colors.amber[900],
                                ),
                              ),
                              Text(
                                viewModelState.isVerified 
                                  ? 'Your account has been verified for high-value transactions.'
                                  : 'Complete your registration to access all features.',
                                style: TextStyle(
                                  fontSize: 12, 
                                  color: viewModelState.isVerified ? Colors.green : Colors.amber[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(8)),
            child: Icon(icon, color: Colors.blue, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 12, color: Colors.grey[500], fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
