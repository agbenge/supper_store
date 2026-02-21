import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ShopInventoryViewModel extends _$ShopInventoryViewModel {
  @override
  ShopInventoryViewModelState build() {
    return const ShopInventoryViewModelState(
      items: [
        InventoryItem(title: 'Premium Coffee Beans', category: 'Beverages', stock: '45 units', price: '\$12.50', isLowStock: false),
        InventoryItem(title: 'Organic Green Tea', category: 'Beverages', stock: '8 units', price: '\$15.00', isLowStock: true),
        InventoryItem(title: 'Whole Wheat Bread', category: 'Bakery', stock: '15 units', price: '\$4.20', isLowStock: false),
        InventoryItem(title: 'Almond Milk 1L', category: 'Dairy', stock: '5 units', price: '\$3.80', isLowStock: true),
        InventoryItem(title: 'Local Farm Eggs', category: 'Dairy', stock: '24 units', price: '\$6.50', isLowStock: false),
      ],
      totalItems: 124,
      lowStockCount: 12,
    );
  }

  void setFilter(String filter) {
    state = state.copyWith(selectedFilter: filter);
  }
}
