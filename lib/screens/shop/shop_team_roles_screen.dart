import 'package:flutter/material.dart';

class ShopTeamRolesScreen extends StatelessWidget {
  const ShopTeamRolesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Team Roles'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Info Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue[100]!),
              ),
              child: Row(
                children: [
                  const Icon(Icons.info_outline, color: Colors.blue),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Assign roles to your team members to manage what they can see and do in the shop.',
                      style: TextStyle(color: Colors.blue[900], fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Current Team',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildTeamMemberTile('John Doe (You)', 'Owner', true),
            _buildTeamMemberTile('Alice Smith', 'Manager', false),
            _buildTeamMemberTile('Bob Wilson', 'Sales Assistant', false),
            
            const SizedBox(height: 32),

            const Text(
              'Available Roles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildRoleDescription('Owner', 'Full access to all shop features and financial settings.', Icons.admin_panel_settings),
            _buildRoleDescription('Manager', 'Can manage inventory, staff, and view reports.', Icons.manage_accounts),
            _buildRoleDescription('Sales Assistant', 'Can process orders and manage basic inventory.', Icons.point_of_sale),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add Member'),
        icon: const Icon(Icons.person_add),
      ),
    );
  }

  Widget _buildTeamMemberTile(String name, String role, bool isCurrentUser) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isCurrentUser ? Colors.blue : Colors.grey[200],
          child: Text(
            name[0],
            style: TextStyle(color: isCurrentUser ? Colors.white : Colors.black87),
          ),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(role, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
        trailing: isCurrentUser 
          ? null 
          : IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
      ),
    );
  }

  Widget _buildRoleDescription(String role, String description, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.blue, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  role,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600], fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
