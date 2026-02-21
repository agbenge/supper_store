import 'package:flutter/material.dart';

class BuyerViewOrderScreen extends StatelessWidget {
  const BuyerViewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
        title: Text('Order #TRK-88291'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage('https://via.placeholder.com/48'), // Placeholder
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('GreenLeaf Groceries', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('124 Market St, San Francisco, CA', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.navigation, size: 16),
                                label: Text('Directions', style: TextStyle(fontSize: 11)),
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  shape: StadiumBorder(),
                                ),
                              ),
                              SizedBox(width: 8),
                              OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.phone, size: 16),
                                label: Text('Contact', style: TextStyle(fontSize: 11)),
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  shape: StadiumBorder(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStep('Order Placed', Icons.check, true),
                        _buildStep('Confirmed', Icons.check, true),
                        _buildStep('Packed', Icons.inventory_2, true),
                        _buildStep('Ready', Icons.hail, true, isActive: true),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 2,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue, Colors.blue, Colors.grey],
                          stops: [0.0, 0.75, 0.75, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    Text('Verification QR Code', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('Show this to the shop assistant to verify your order', style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 32),
                    Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                      ),
                      child: Image.network(
                        'https://via.placeholder.com/192', // Placeholder for QR
                        width: 192,
                        height: 192,
                      ),
                    ),
                    SizedBox(height: 32),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        '882-A91',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue, letterSpacing: 4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.grey[50],
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Summary', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey, letterSpacing: 1)),
                    SizedBox(height: 16),
                    _buildItem('1x', 'Organic Avocados (3pk)', '\$8.50'),
                    _buildItem('2x', 'Whole Grain Bread', '\$11.00'),
                    _buildItem('1x', 'Oat Milk 1L', '\$4.25'),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                        Text('\$23.75', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey[200]!)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(Icons.info, color: Colors.blue),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Please ensure you have received all items before tapping the confirmation button. This action is final and will process your payment.',
                      style: TextStyle(color: Colors.grey[700], fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified_user),
                  SizedBox(width: 12),
                  Text('Paid & Picked Up', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String label, IconData icon, bool completed, {bool isActive = false}) {
    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: completed ? Colors.blue : Colors.grey,
            shape: BoxShape.circle,
            boxShadow: isActive ? [BoxShadow(color: Colors.blue.withOpacity(0.3), blurRadius: 8)] : null,
          ),
          child: Icon(icon, color: Colors.white, size: 16),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 9,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            color: isActive ? Colors.blue : Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildItem(String qty, String name, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(qty, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              SizedBox(width: 12),
              Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}