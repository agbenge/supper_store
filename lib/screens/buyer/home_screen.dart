import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/login/provider.dart';
import 'buyer_home_discovery_screen.dart';
import 'buyer_orders_screen.dart';
import 'orders_not_signin_screen.dart';
import 'profile_and_shop_services_screen.dart';
import 'profile_not_signin_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = ref.watch(loginViewModelProvider).isLoggedIn;

    // Dynamic list of screens based on auth state
    final List<Widget> screens = [
      const BuyerHomeDiscoveryScreen(),
      isLoggedIn ? const BuyerOrdersScreen() : const OrdersNotSigninScreen(),
      isLoggedIn
          ? const ProfileAndShopServicesScreen()
          : const ProfileNotSigninScreen(),
    ];

    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
