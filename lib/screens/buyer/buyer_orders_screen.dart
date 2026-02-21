import 'package:flutter/material.dart';

class BuyerOrdersScreen extends StatefulWidget {
  const BuyerOrdersScreen({super.key});

  @override
  _BuyerOrdersScreenState createState() => _BuyerOrdersScreenState();
}

class _BuyerOrdersScreenState extends State<BuyerOrdersScreen> {
  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                color: _selectedIndex == 0 ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'Active',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: _selectedIndex == 0 ? Colors.blue[800] : Colors.grey[600],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = 1;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                color: _selectedIndex == 1 ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  'Past',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: _selectedIndex == 1 ? Colors.blue[800] : Colors.grey[600],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildOrderCard(
                    'GreenLeaf Groceries',
                    'ORD-8821',
                    'Ready for Pickup',
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuCTlANPe4j2rgTFCZV2hFT_M6LJPQoG4YW_6KkY5vZ-WYLIrjhAbJRkB0-u-QZyM4Nf5VirATX0c27AInOJlxGKKgjhxkQOthYcnJspK5HBiAcDL-Q0d4mMKSGFxOZD7MAEb8cMwFsqKKzDdCdtxhOQI-RKIpQbrCaxRcgqqefRQYgPKkeBw2w-sExYe3Yfv-ZD6aLvC6v8o9qGOElkwKS4x6i1_TmpXioWxguAZIX84F43Hw9Q52-brAG70dCT7H6gPvoysZk-gZo',
                    '\$42.50',
                    1.0,
                    ['Placed', 'Packing', 'Ready'],
                    2,
                  ),
                  SizedBox(height: 16),
                  _buildOrderCard(
                    'TechHaven',
                    'ORD-7742',
                    'Packing',
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBO8nljuQbItub9YC_fezTmN7jY5gHGYA3WMm2s-8461tkWCpIFCfgqDabIAkC1LEt6NWOoMMzUa_1E0slbj88UCehTGtJa2MLXX40vNqsKkHB8tVRlF9f20APiKwxp8yeaP9SHAM_BfdsWSe01nZVGMG0q6bbCs-yT7X8-s59N-5Tcr9YhnCaG9LQEoX6y8mycCkvTX3SVd4KfVcDZQ4gAjGOYHK2Cp3Tkim8b7DFdDGtOIBrQ9IKPhVO_eJU1nUm7inzvky94dcE',
                    '\$199.99',
                    0.66,
                    ['Placed', 'Packing', 'Ready'],
                    1,
                  ),
                  SizedBox(height: 16),
                  _buildOrderCard(
                    'Urban Kicks',
                    'ORD-5521',
                    'Pending Approval',
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuAZD2-pWYhU3uNmuroUdwEtqZ4yGSchXz4wHeDzEATZNB5XLhzhnl-yvWlG_lETlnqgT71M_QzfzsT9GKfc_wMrlUcKfk0c42fRczOXJjdPV8KelqLptempeGL6Pu58ITwFI_KktBkhJ99gx7mybqZIYD7dQvVtjymENhBmjI03e9kfw6f3FQy_uzhuBWqPp3GBpQUK5jZFccERrtiaRIk7fAB_VuwEHXufMMcox76F1Ii6_BROfCOu4OtD65c3L5bCrIJmbtnzD9I',
                    '\$89.50',
                    0.33,
                    ['Placed', 'Packing', 'Ready'],
                    0,
                    hasActions: true,
                  ),
                  SizedBox(height: 16),
                  _buildOrderCard(
                    'Artisan Bakery',
                    'ORD-9912',
                    'Placed',
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBu11feFzJRpMUQvjxD3Eaeu_WMmHfijSn3QqyQEZ5UAJRBPzTkdk2RGJF6uSRua2FtogTPaVdp3iKyuN068yA3og-geJ-40usdU_YWYCdyY2SEp6tMhr7BxZI5_VWByfDg7jhaRgpG465U1KX384DxtVdr1qckoQyAd2jXEF3NAgQDco_VmVMs5CGSj_jO2vNNRbrkPeMJ4ZFOTYIM5u5YZAHeCY5RYJcwnYQM9sUx-ApFFbV9EiNteLtV4c93YppD7Oiu0-MbZ0Q',
                    '\$18.25',
                    0.15,
                    ['Placed', 'Packing', 'Ready'],
                    0,
                    hasActions: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildOrderCard(String shopName, String orderId, String status, String imageUrl, String price, double progress, List<String> steps, int currentStep, {bool hasActions = false}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shopName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Order #$orderId',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (shopName == 'GreenLeaf Groceries') ...[
                    SizedBox(width: 8),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Text(
                          '+2',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[800]!),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: steps.asMap().entries.map((entry) {
              int index = entry.key;
              String step = entry.value;
              return Text(
                step,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: index == currentStep ? Colors.blue[800] : Colors.grey[400],
                ),
              );
            }).toList(),
          ),
          if (hasActions) ...[
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red[200]!),
                      foregroundColor: Colors.red[600],
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Cancel Order'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Modify Order'),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}