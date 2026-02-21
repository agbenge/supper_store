import 'package:flutter/material.dart';

class ShopCreateNewScreen extends StatelessWidget {
  const ShopCreateNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {},
        ),
        title: Text('Create Shop Profile'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Cancel', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shop Identity', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey, letterSpacing: 1)),
              SizedBox(height: 8),
              Card(
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt, size: 32, color: Colors.grey),
                            SizedBox(height: 8),
                            Text('Upload Shop Banner', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500)),
                            Text('Recommended: 1200 x 600px', style: TextStyle(color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Shop Name',
                              labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 16),
                          ),
                          Divider(),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Category',
                              labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                              border: InputBorder.none,
                            ),
                            items: [
                              DropdownMenuItem(value: 'bakery', child: Text('Bakery & Cafe')),
                              DropdownMenuItem(value: 'grocery', child: Text('Grocery Store')),
                              DropdownMenuItem(value: 'electronics', child: Text('Electronics')),
                              DropdownMenuItem(value: 'fashion', child: Text('Fashion & Apparel')),
                              DropdownMenuItem(value: 'pharmacy', child: Text('Pharmacy')),
                            ],
                            onChanged: (value) {},
                          ),
                          Divider(),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Description',
                              labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                              border: InputBorder.none,
                            ),
                            maxLines: 3,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Location Details', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey, letterSpacing: 1)),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.my_location, size: 14),
                    label: Text('Update current location', style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Country',
                                labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Container(height: 50, width: 1, color: Colors.grey[300]),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'State',
                                labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'LGA / District',
                          labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Detailed Address',
                          labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://via.placeholder.com/400x120'), // Placeholder for map
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Icon(Icons.location_on, color: Colors.blue, size: 32),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text('Payment Information', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey, letterSpacing: 1)),
              SizedBox(height: 8),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Bank Name',
                          labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Account Number',
                          labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Text('This information is used to facilitate payments from buyers.', style: TextStyle(color: Colors.grey, fontSize: 10, fontStyle: FontStyle.italic)),
              SizedBox(height: 16),
              Text('Staff Management', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey, letterSpacing: 1)),
              SizedBox(height: 8),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Invite seller by email...',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.person_add),
                            label: Text('Invite'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text('Invited sellers can manage orders and inventory.', style: TextStyle(color: Colors.grey, fontSize: 10)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: Text('Create Shop'),
              ),
              SizedBox(height: 16),
              Text(
                'By creating a shop, you agree to our Terms of Service and Merchant Guidelines.',
                style: TextStyle(color: Colors.grey, fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}