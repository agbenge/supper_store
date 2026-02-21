import 'package:flutter/material.dart';

class ShopMoreScreen extends StatelessWidget {
  const ShopMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('More'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Shop Profile Header
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.store, size: 30, color: Colors.blue),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GreenLeaf Groceries',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Owner: John Doe',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.edit_note, color: Colors.blue),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            
            const Divider(thickness: 1, height: 1),

            // Management Section
            _buildSectionTitle('Management'),
            _buildMenuItem(Icons.inventory_2_outlined, 'Inventory Management', 'Manage products and stock levels'),
            _buildMenuItem(Icons.people_outline, 'Team Roles', 'Manage staff and permissions'),
            _buildMenuItem(Icons.analytics_outlined, 'Shop Performance', 'Sales and activity reports'),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Divider(),
            ),

            // Financial Section
            _buildSectionTitle('Financial'),
            _buildMenuItem(Icons.receipt_long_outlined, 'All Expenses', 'Log and view shop spending'),
            _buildMenuItem(Icons.payments_outlined, 'Payout Details', 'Manage bank accounts and transfers'),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Divider(),
            ),

            // Settings Section
            _buildSectionTitle('Settings'),
            _buildMenuItem(Icons.settings_outlined, 'Shop Settings', 'Operational hours and preferences'),
            _buildMenuItem(Icons.help_outline, 'Support & FAQ', 'Get help with shop management'),
            
            const SizedBox(height: 40),
            
            // Logout / Close Shop
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Shop for Today',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey[400],
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Colors.blue),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
      ),
      trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.grey),
      onTap: () {},
    );
  }
}
