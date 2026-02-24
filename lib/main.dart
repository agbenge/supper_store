import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
import 'screens/shop/shop_inventory_screen.dart';
import 'screens/shop/shop_more_screen.dart';
import 'screens/shop/shop_management_screen.dart';
import 'screens/shop/shop_orders_list_screen.dart';
import 'screens/shop/shop_orders_screen.dart';
import 'screens/shop/shop_expenses_list_screen.dart';
import 'screens/shop/shop_team_roles_screen.dart';
import 'screens/shop/shop_review_summary_screen.dart';
import 'screens/shop/shop_profile_view_screen.dart';
import 'screens/shop/create_shop_profile_screen.dart';
import 'screens/shop/edit_shop_profile_screen.dart';
import 'screens/buyer/profile_settings_screen.dart';
import 'screens/buyer/profile_details_screen.dart';
import 'screens/buyer/buyer_order_summary_screen.dart';
import 'screens/shop/payment_received_fulfilled_screen.dart';
import 'screens/shop/item_new_form_screen.dart';

import 'screens/main_navigation_screen.dart';
import 'view_model/login/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginViewModelProvider);

    return MaterialApp(
      title: 'Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: loginState.isLoggedIn && loginState.isShop
          ? const MainNavigationScreen()
          : const HomeScreen(),
      routes: {
        // Profile Routes
        '/login': (context) => const LoginScreen(),
        '/profile_settings': (context) => const ProfileSettingsScreen(),
        '/profile_details': (context) => const ProfileDetailsScreen(),

        /// buyer routes
        "/home": (context) => const HomeScreen(),
        '/buyer_home_discovery': (context) => const BuyerHomeDiscoveryScreen(),
        '/buyer_view_item': (context) => const BuyerViewItemScreen(),
        '/buyer_orders': (context) => const BuyerOrdersScreen(),
        '/add_shop_staff_overlay': (context) =>
            const AddShopStaffOverlayScreen(),
        '/buyer_checkout': (context) => const BuyerCheckoutScreen(),
        '/shop_create_new': (context) => const ShopCreateNewScreen(),
        '/buyer_view_order': (context) => const BuyerViewOrderScreen(),
        '/register': (context) => const ProfileRegistrationScreen(),

        // Shop Management Routes
        '/main': (context) => const MainNavigationScreen(),
        '/shop_inventory': (context) => const ShopInventoryScreen(),
        '/shop_more': (context) => const ShopMoreScreen(),
        '/shop_management': (context) => const ShopManagementScreen(),
        '/shop_orders_list': (context) => const ShopOrdersListScreen(),
        '/shop_orders': (context) => const ShopOrdersScreen(),
        '/shop_expenses_list': (context) => const ShopExpensesListScreen(),
        '/shop_team_roles': (context) => const ShopTeamRolesScreen(),
        '/shop_review_summary': (context) => const ShopReviewSummaryScreen(),
        '/shop_profile_view': (context) => const ShopProfileViewScreen(),
        '/create_shop_profile': (context) => const CreateShopProfileScreen(),
        '/edit_shop_profile': (context) => const EditShopProfileScreen(),
        '/payment_received_fulfilled': (context) =>
            const PaymentReceivedFulfilledScreen(),
        '/item_new_form': (context) => const ItemNewFormScreen(),

        // Buyer Transactional Routes
        '/buyer_order_summary': (context) => const BuyerOrderSummaryScreen(),
      },
    );
  }
}
