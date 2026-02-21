import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';
import 'package:flutter/material.dart';

part 'provider.g.dart';

@riverpod
class BuyerHomeDiscoveryViewModel extends _$BuyerHomeDiscoveryViewModel {
  @override
  BuyerHomeDiscoveryViewModelState build() {
    return const BuyerHomeDiscoveryViewModelState(
      categories: [
        ShoppingCategory(name: 'Tech', icon: Icons.devices),
        ShoppingCategory(name: 'Fashion', icon: Icons.checkroom),
        ShoppingCategory(name: 'Grocery', icon: Icons.shopping_basket),
        ShoppingCategory(name: 'Health', icon: Icons.medical_services),
        ShoppingCategory(name: 'Pets', icon: Icons.pets),
      ],
      trendingItems: [
        TrendingItem(title: 'Pro-Wireless X1', shopName: 'TechHaven Electronics', price: '\$199.99', badge: 'Hot Now'),
        TrendingItem(title: 'SwiftRun Sneakers', shopName: 'Urban Kicks', price: '\$89.50', badge: 'Fast Selling'),
      ],
      nearbyShops: [
        NearbyShop(name: 'GreenLeaf Groceries', description: 'Fresh produce & Essentials', rating: '4.8', distance: '0.8 km'),
        NearbyShop(name: 'TechHaven', description: 'Premium Gadgets & Gear', rating: '4.9', distance: '1.2 km'),
        NearbyShop(name: 'Urban Kicks', description: 'Streetwear & Footwear', rating: '4.6', distance: '2.5 km'),
      ],
    );
  }

  void updateSearch(String query) {
    state = state.copyWith(searchQuery: query);
  }
}
