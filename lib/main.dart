import 'package:flutter/material.dart';
import 'screens/buyer/home_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/buyer/buyer_home_discovery_screen.dart';
import 'screens/buyer/buyer_view_item_screen.dart';
import 'screens/buyer/buyer_orders_screen.dart';
import 'screens/shop/add_shop_staff_overlay_screen.dart';
import 'screens/buyer/buyer_checkout_screen.dart';
import 'screens/shop/shop_create_new_screen.dart';
import 'screens/buyer/buyer_view_order_screen.dart';
import 'screens/auth/profile_registration_screen.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
      routes: { 
        '/buyer_home_discovery': (context) => BuyerHomeDiscoveryScreen(),
         '/login': (context) => LoginScreen(),
        '/buyer_view_item': (context) => BuyerViewItemScreen(),
        '/buyer_orders': (context) => BuyerOrdersScreen(),
        '/add_shop_staff_overlay': (context) => AddShopStaffOverlayScreen(),
        '/buyer_checkout': (context) => BuyerCheckoutScreen(),
        '/shop_create_new': (context) => ShopCreateNewScreen(),
        '/buyer_view_order': (context) => BuyerViewOrderScreen(),
        '/register': (context) => ProfileRegistrationScreen(),
        // Add more routes here as screens are created
      },
    );
  }
}
