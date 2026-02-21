import 'package:flutter/material.dart';

class ProfileAndShopServicesScreen extends StatelessWidget {
  const ProfileAndShopServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          TextButton(
            onPressed: () {
              // Handle edit
            },
            child: Row(
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/aida-public/AB6AXuDHvV04JeNG6NJBLyz_SkA39Zc55N9zqMGoV3cpq-DhxdESd1wDKdIoUijYA9jmBZshwZWdAjzYG_NkU-2BcbSQU4XA8R1nqGYILcnSAdlk-eX5RwLDoWo7oEKesNuCxNpXcLJv7m6ePwaSZoBbhqbJkyxzApXoEfmc_6Uzzpo-3hXu7YIxq2ueY6Y7at0ZDp8ij5GKAnRPGul-0ciiqoVDvg28CkePKDRkwKCY7hdx_6ECOebZlgkBXQax1_xDOnmT9lFa-8LaDfo',
                          ),
                        ),
                        Positioned(
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
                    SizedBox(height: 16),
                    Text(
                      'Alex Thompson',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '+1 (555) 012-3456',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
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
            SizedBox(height: 12),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.location_on, color: Colors.blue),
                    title: Text(
                      'Current Address',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    subtitle: Text('742 Evergreen Terrace, Springfield, OR 97403'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.blue),
                    title: Text(
                      'Permanent Address',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    subtitle: Text('123 Maple Street, Portland, ME 04101'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.mail, color: Colors.blue),
                    title: Text(
                      'Email Address',
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                    subtitle: Text('alex.t@example.com'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            // My Shop Services
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Shop Services',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            // Shop 1
            Card(
              child: ListTile(
                leading: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.storefront, color: Colors.blue),
                ),
                title: Text("Alex's Bakery"),
                subtitle: Text('Fresh pastries & Pre-orders'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Handle shop tap
                },
              ),
            ),
            SizedBox(height: 12),
            // Shop 2
            Card(
              child: ListTile(
                leading: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.local_cafe, color: Colors.blue),
                ),
                title: Text('Corner Coffee Hub'),
                subtitle: Text('Artisan beans & Pickup'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Handle shop tap
                },
              ),
            ),
            SizedBox(height: 12),
            // Create New Shop Button
            ElevatedButton(
              onPressed: () {
                // Handle create new shop
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
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