import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ShopManagementViewModel extends _$ShopManagementViewModel {
  @override
  ShopManagementViewModelState build() {
    return const ShopManagementViewModelState(
      todaySales: 1240.0,
      activeOrders: 18,
      newReviews: 4,
      lowStockCount: 12,
      shopName: 'GreenLeaf Groceries',
      ownerName: 'John',
    );
  }

  void refresh() {
    // Logic to refresh shop data
  }
}
