import 'package:flutter/material.dart';

class ShoppingCategory {
  final String name;
  final IconData icon;

  const ShoppingCategory({required this.name, required this.icon});
}

class TrendingItem {
  final String title;
  final String shopName;
  final String shopId;
  final String price;
  final String badge;
  final String imageUrl;

  const TrendingItem({
    required this.title,
    required this.shopName,
    required this.shopId,
    required this.price,
    required this.badge,
    required this.imageUrl,
  });
}

class NearbyShop {
  final String id;
  final String name;
  final String description;
  final String rating;
  final String distance;
  final String imageUrl;

  const NearbyShop({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.distance,
    required this.imageUrl,
  });
}

class BuyerHomeDiscoveryViewModelState {
  final List<ShoppingCategory> categories;
  final List<TrendingItem> trendingItems;
  final List<NearbyShop> nearbyShops;
  final String searchQuery;

  const BuyerHomeDiscoveryViewModelState({
    this.categories = const [],
    this.trendingItems = const [],
    this.nearbyShops = const [],
    this.searchQuery = '',
  });

  BuyerHomeDiscoveryViewModelState copyWith({
    List<ShoppingCategory>? categories,
    List<TrendingItem>? trendingItems,
    List<NearbyShop>? nearbyShops,
    String? searchQuery,
  }) {
    return BuyerHomeDiscoveryViewModelState(
      categories: categories ?? this.categories,
      trendingItems: trendingItems ?? this.trendingItems,
      nearbyShops: nearbyShops ?? this.nearbyShops,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}
