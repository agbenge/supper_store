import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/shop_management/provider.dart';
import '../../view_model/shop_management/state.dart';

class ShopManagementScreen extends ConsumerWidget {
  const ShopManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(shopManagementViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
         ref.read(shopManagementViewModelProvider.notifier).refresh();
         return Future.value();
      },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              Text(
                'Welcome back, ${viewModelState.ownerName}!',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Here\'s what\'s happening with ${viewModelState.shopName} today.',
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),
  
              // Metrics Grid
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _buildMetricCard(
                    'Today\'s Sales', 
                    '\$${viewModelState.todaySales.toStringAsFixed(0)}', 
                    Icons.trending_up, 
                    Colors.green,
                    onTap: () => Navigator.pushNamed(context, '/shop_orders'),
                  ),
                  _buildMetricCard(
                    'Active Orders', 
                    viewModelState.activeOrders.toString(), 
                    Icons.shopping_bag, 
                    Colors.blue,
                    onTap: () => Navigator.pushNamed(context, '/shop_orders'),
                  ),
                  _buildMetricCard(
                    'New Reviews', 
                    viewModelState.newReviews.toString(), 
                    Icons.star, 
                    Colors.orange,
                    onTap: () => Navigator.pushNamed(context, '/shop_review_summary'),
                  ),
                  _buildMetricCard(
                    'Low Stock', 
                    viewModelState.lowStockCount.toString(), 
                    Icons.warning_amber, 
                    Colors.red,
                    onTap: () => Navigator.pushNamed(context, '/shop_inventory'),
                  ),
                ],
              ),
              const SizedBox(height: 24),
  
              // Quick Actions
              const Text(
                'Quick Actions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildQuickAction('Add Item', Icons.add_box, Colors.blue, 
                      onTap: () => Navigator.pushNamed(context, '/item_new_form')),
                    _buildQuickAction('View Orders', Icons.list_alt, Colors.green, 
                      onTap: () => Navigator.pushNamed(context, '/shop_orders')),
                    _buildQuickAction('Expenses', Icons.receipt, Colors.purple, 
                      onTap: () => Navigator.pushNamed(context, '/shop_expenses_list')),
                    _buildQuickAction('Team', Icons.group, Colors.orange, 
                      onTap: () => Navigator.pushNamed(context, '/shop_team_roles')),
                    _buildQuickAction('Reports', Icons.bar_chart, Colors.teal, 
                      onTap: () {}),
                  ],
                ),
              ),
              const SizedBox(height: 24),
  
              // Recent Activity Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Activity',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/shop_orders_list'),
                    child: const Text('View All'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _buildActivityItem('Order #1234 fulfilled', '2 mins ago', Icons.check_circle, Colors.green),
              _buildActivityItem('New review from Sarah', '15 mins ago', Icons.rate_review, Colors.blue),
              _buildActivityItem('Stock alert: Coffee Beans', '1 hour ago', Icons.error, Colors.red),
              _buildActivityItem('Expense logged: Electricity', '3 hours ago', Icons.payment, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricCard(String title, String value, IconData icon, Color color, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: Colors.grey[100]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600], fontWeight: FontWeight.w500),
                ),
                Icon(icon, color: color, size: 20),
              ],
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(String title, IconData icon, Color color, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 80,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(String title, String time, IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 18),
        ],
      ),
    );
  }
}
