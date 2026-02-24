import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/login/provider.dart';

class ShopMoreHubScreen extends ConsumerWidget {
  const ShopMoreHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginNotifier = ref.read(loginViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'More',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.blue[50],
              child: const Icon(Icons.person, color: Colors.blue),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('ADMINISTRATIVE'),
            const SizedBox(height: 12),
            _buildActionCard([
              _buildActionItem(
                Icons.store,
                'View My Shops',
                'Manage shop profiles & locations',
              ),
              _buildActionItem(
                Icons.analytics,
                'Business Performance',
                'Analytics, reports and insights',
              ),
              _buildActionItem(
                Icons.people,
                'Manage Team',
                'Staff list and active sessions',
              ),
              _buildActionItem(
                Icons.security,
                'Security & Roles',
                'Permissions and access control',
              ),
              _buildActionItem(
                Icons.exit_to_app,
                'Exit Shop Mode',
                'Switch back to buyer view',
                onTap: () {
                  loginNotifier.enterBuyerMode();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false,
                  );
                },
              ),
            ]),
            const SizedBox(height: 32),
            _buildSectionTitle('GLOBAL STATUS'),
            const SizedBox(height: 12),
            _buildStatusCard([
              _buildStatusItem(
                Icons.power_settings_new,
                'All Shops Online',
                'Accepting orders across all branches',
                true,
                Colors.green,
              ),
              _buildStatusItem(
                Icons.block,
                'Disable Shop Access',
                'Emergency lockdown for all owners',
                false,
                Colors.red,
              ),
            ]),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                'Version 2.4.0 (Build 892) • Enterprise Edition',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  loginNotifier.logout();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false,
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: Colors.grey[200]!),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey[300],
        letterSpacing: 1.2,
      ),
    );
  }

  Widget _buildActionCard(List<Widget> children) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(color: Colors.grey[100]!),
      ),
      child: Column(children: _separateWithDividers(children)),
    );
  }

  Widget _buildStatusCard(List<Widget> children) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(color: Colors.grey[100]!),
      ),
      child: Column(children: _separateWithDividers(children)),
    );
  }

  List<Widget> _separateWithDividers(List<Widget> widgets) {
    if (widgets.isEmpty) return [];
    List<Widget> result = [];
    for (int i = 0; i < widgets.length; i++) {
      result.add(widgets[i]);
      if (i < widgets.length - 1) {
        result.add(const Divider(height: 1, indent: 70));
      }
    }
    return result;
  }

  Widget _buildActionItem(
    IconData icon,
    String title,
    String subtitle, {
    VoidCallback? onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Colors.blue),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.blueGrey[300], fontSize: 13),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildStatusItem(
    IconData icon,
    String title,
    String subtitle,
    bool status,
    Color iconColor,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: iconColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.blueGrey[300], fontSize: 13),
      ),
      trailing: Switch(
        value: status,
        onChanged: (value) {},
        activeColor: Colors.blue,
      ),
    );
  }
}
