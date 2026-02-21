import 'package:flutter/material.dart';

class BuyerHomeDiscoveryScreen extends StatelessWidget {
  const BuyerHomeDiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(

            children: [
        // Header
        Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.blue),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16),
            // Search bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.blue),
                hintText: 'Search for shops or items',
                suffixIcon: IconButton(
                  icon: Icon(Icons.tune),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
      // Categories
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text('See All', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),

              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    _buildCategoryItem('Tech', Icons.devices),
                    _buildCategoryItem('Fashion', Icons.checkroom),
                    _buildCategoryItem('Grocery', Icons.shopping_basket),
                    _buildCategoryItem('Health', Icons.medical_services),
                    _buildCategoryItem('Pets', Icons.pets),
                  ],
                ),
              ),
          Expanded(child:
          SingleChildScrollView(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Trending Pre-orders
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Trending Pre-orders',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    children: [
                      _buildTrendingItem(context, 'Pro-Wireless X1', 'TechHaven Electronics', '\$199.99', 'Hot Now'),
                      _buildTrendingItem(context, 'SwiftRun Sneakers', 'Urban Kicks', '\$89.50', 'Fast Selling'),
                    ],
                  ),
                ),
                // Nearby Shops
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nearby Shops',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Chip(label: Text('Nearby'), backgroundColor: Colors.blue[50]),
                          SizedBox(width: 8),
                          Text('Popular', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      _buildShopItem('GreenLeaf Groceries', 'Fresh produce & Essentials', '4.8', '0.8 km'),
                      _buildShopItem('TechHaven', 'Premium Gadgets & Gear', '4.9', '1.2 km'),
                      _buildShopItem('Urban Kicks', 'Streetwear & Footwear', '4.6', '2.5 km'),
                    ],
                  ),
                ),
              ],
            ),
          ),)
        ],
      )


    );
  }

  Widget _buildCategoryItem(String name, IconData icon) {
    return Container(
      width: 70,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: Colors.blue, size: 32),
          ),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildTrendingItem(BuildContext context, String title, String subtitle, String price, String badge) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Placeholder
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Center(child: Text('Image')),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    badge,
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(price, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyer_view_item');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.flash_on, size: 16),
                      SizedBox(width: 8),
                      Text('Pre-order Now'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShopItem(String name, String desc, String rating, String distance) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300], // Placeholder
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text('Image')),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue, size: 14),
                        Text(rating, style: TextStyle(color: Colors.blue, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(desc, style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.blue, size: 12),
                          SizedBox(width: 4),
                          Text(distance, style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward, color: Colors.blue),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}