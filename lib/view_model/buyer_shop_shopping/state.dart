import '../../view_model/buyer_home_discovery/state.dart';

class BuyerShopShoppingState {
  final NearbyShop shop;
  final List<TrendingItem> items;
  final String selectedCategory;

  const BuyerShopShoppingState({
    required this.shop,
    this.items = const [],
    this.selectedCategory = 'All Items',
  });

  BuyerShopShoppingState copyWith({
    NearbyShop? shop,
    List<TrendingItem>? items,
    String? selectedCategory,
  }) {
    return BuyerShopShoppingState(
      shop: shop ?? this.shop,
      items: items ?? this.items,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }
}
