import 'package:flutter/material.dart';

class EditShopProfileScreen extends StatefulWidget {
  const EditShopProfileScreen({super.key});

  @override
  State<EditShopProfileScreen> createState() => _EditShopProfileScreenState();
}

class _EditShopProfileScreenState extends State<EditShopProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Edit Shop Profile'),
        actions: [
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Save changes
              }
            },
            child: const Text('Save', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Shop Photo
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue.withOpacity(0.2), width: 2),
                      ),
                      child: const Icon(Icons.storefront, size: 60, color: Colors.blue),
                    ),
                    Positioned(
                      bottom: -4,
                      right: -4,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.edit, color: Colors.white, size: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              const Text(
                'Shop Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildTextField('Shop Name', 'GreenLeaf Groceries'),
              const SizedBox(height: 16),
              _buildTextField('Shop Category', 'Supermarket, Organic Food'),
              const SizedBox(height: 16),
              _buildTextField(
                'Description', 
                'Fresh organic produce direct from local farms. We specialize in seasonal vegetables and exotic fruits.', 
                maxLines: 3
              ),
              
              const SizedBox(height: 32),
              
              const Text(
                'Location & Contact',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildTextField('Business Address', '45 Market Street, Lagos Island'),
              const SizedBox(height: 16),
              _buildTextField('Phone Number', '+234 801 234 5678'),
              const SizedBox(height: 16),
              _buildTextField('Email Address', 'hello@greenleaf.com'),
              
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Divider(),
              ),
              
              const Text(
                'Operating Hours',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _buildOperatingHoursRow('Monday - Friday', '08:00 AM - 08:00 PM'),
              _buildOperatingHoursRow('Saturday', '09:00 AM - 06:00 PM'),
              _buildOperatingHoursRow('Sunday', 'Closed'),
              
              const SizedBox(height: 48),
              
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Delete Shop Profile', style: TextStyle(color: Colors.red)),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: initialValue,
          maxLines: maxLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[50],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[200]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[200]!),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildOperatingHoursRow(String days, String hours) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(days, style: const TextStyle(color: Colors.grey)),
          Text(hours, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
