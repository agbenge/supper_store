import 'package:flutter/material.dart';

class ShopCreateNewOrderScreen extends StatefulWidget {
  const ShopCreateNewOrderScreen({super.key});

  @override
  State<ShopCreateNewOrderScreen> createState() => _ShopCreateNewOrderScreenState();
}

class _ShopCreateNewOrderScreenState extends State<ShopCreateNewOrderScreen> {
  int macchiatoQty = 1;
  int croissantQty = 2;
  int waterQty = 1;

  double get total => (macchiatoQty * 4.50) + (croissantQty * 3.50) + (waterQty * 1.50);
  double get tax => total * 0.05;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create New Order'),
            Text(
              'Downtown Branch',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Scan Barcode Button
            ElevatedButton(
              onPressed: () {
                // Scan barcode
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Icon(Icons.photo_camera, size: 40),
                  SizedBox(height: 8),
                  Text(
                    'Scan Barcode',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Instantly add items to cart',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue[100],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            // Search Field
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Add item by name...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(height: 24),
            // Added Items Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Added Items',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '3 Items',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            // Items List
            _buildItemCard(
              'Caramel Macchiato',
              'Medium • Hot',
              Icons.local_cafe,
              macchiatoQty,
              4.50,
              () => setState(() => macchiatoQty--),
              () => setState(() => macchiatoQty++),
            ),
            SizedBox(height: 12),
            _buildItemCard(
              'Butter Croissant',
              'Freshly Baked',
              Icons.bakery_dining,
              croissantQty,
              3.50,
              () => setState(() => croissantQty--),
              () => setState(() => croissantQty++),
            ),
            SizedBox(height: 12),
            _buildItemCard(
              'Mineral Water',
              '500ml',
              Icons.water_drop,
              waterQty,
              1.50,
              () => setState(() => waterQty--),
              () => setState(() => waterQty++),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      '\$${total.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Includes 5% Tax',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      'Tax: \$${tax.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Confirm and complete order
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Order completed successfully')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1E40AF),
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('Confirm & Complete Order'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemCard(String name, String desc, IconData icon, int qty, double price, VoidCallback onMinus, VoidCallback onPlus) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.blue),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove, size: 16),
                      onPressed: qty > 0 ? onMinus : null,
                      padding: EdgeInsets.all(8),
                      constraints: BoxConstraints(),
                    ),
                    Text(
                      qty.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add, size: 16),
                      onPressed: onPlus,
                      padding: EdgeInsets.all(8),
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
                Text(
                  '\$${(qty * price).toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}