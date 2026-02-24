import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store/data/dio_providers.dart';

import 'state.dart';
import '../../view_model/buyer_home_discovery/state.dart';
import 'package:flutter/foundation.dart';

part 'provider.g.dart';

@riverpod
class BuyerShopShoppingViewModel extends _$BuyerShopShoppingViewModel {
  @override
  BuyerShopShoppingState build(NearbyShop shop) {
    _loadItems(shop.id);
    return BuyerShopShoppingState(shop: shop);
  }

  Future<void> _loadItems(String shopId) async {
    try {
      final apiService = ref.read(apiServiceProvider);
      final apiItems = await apiService.getItems(shopId);

      final trendingItems = apiItems
          .map(
            (i) => TrendingItem(
              title: i.title,
              shopName: state.shop.name,
              shopId: state.shop.id,
              price: "\$${i.price.toStringAsFixed(2)}",
              badge: i.badge,
              imageUrl: i.imageUrl,
            ),
          )
          .toList();

      state = state.copyWith(items: trendingItems);
    } catch (e) {
      debugPrint("Error loading items for shop $shopId: $e");
    }
  }

  void setCategory(String category) {
    state = state.copyWith(selectedCategory: category);
  }
}
