import 'package:store/data/dio_providers.dart';
import '../../data/api_service.dart';
import 'state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'provider.g.dart';

@riverpod
class BuyerHomeDiscoveryViewModel extends _$BuyerHomeDiscoveryViewModel {
  @override
  BuyerHomeDiscoveryViewModelState build() {
    _loadData();
    return const BuyerHomeDiscoveryViewModelState();
  }

  Future<void> _loadData() async {
    try {
      final apiService = ref.read(apiServiceProvider);

      final shopsFuture = apiService.getShops();
      final categoriesFuture = apiService.getCategories();
      final itemsFuture = apiService.getItems(null);

      final results = await Future.wait([
        shopsFuture,
        categoriesFuture,
        itemsFuture,
      ]);

      final apiShops = results[0] as List<ApiShop>;
      final apiCategories = results[1] as List<ApiCategory>;
      final apiItems = results[2] as List<ApiItem>;

      final nearbyShops = apiShops
          .map(
            (s) => NearbyShop(
              id: s.id,
              name: s.name,
              description: s.description,
              rating: s.rating.toString(),
              distance: s.distance,
              imageUrl: s.imageUrl,
            ),
          )
          .toList();

      final categories = apiCategories
          .map(
            (c) =>
                ShoppingCategory(name: c.name, icon: _getIconForName(c.icon)),
          )
          .toList();

      final trendingItems = apiItems.take(5).map((i) {
        final shop = apiShops.firstWhere(
          (s) => s.id == i.shopId,
          orElse: () => apiShops.first,
        );
        return TrendingItem(
          title: i.title,
          shopName: shop.name,
          shopId: shop.id,
          price: "\$${i.price.toStringAsFixed(2)}",
          badge: i.badge,
          imageUrl: i.imageUrl,
        );
      }).toList();

      state = state.copyWith(
        nearbyShops: nearbyShops,
        categories: categories,
        trendingItems: trendingItems,
      );
    } catch (e) {
      debugPrint("Error loading discovery data: $e");
    }
  }

  IconData _getIconForName(String name) {
    switch (name.toLowerCase()) {
      case 'devices':
        return Icons.devices;
      case 'checkroom':
        return Icons.checkroom;
      case 'shopping_basket':
        return Icons.shopping_basket;
      case 'medical_services':
        return Icons.medical_services;
      case 'pets':
        return Icons.pets;
      default:
        return Icons.category;
    }
  }

  void updateSearch(String query) {
    state = state.copyWith(searchQuery: query);
  }
}
