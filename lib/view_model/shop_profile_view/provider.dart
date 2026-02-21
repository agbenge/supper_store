import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ShopProfileViewViewModel extends _$ShopProfileViewViewModel {
  @override
  ShopProfileViewViewModelState build() {
    return const ShopProfileViewViewModelState(
      shopName: 'GreenLeaf Groceries',
      bannerUrl: 'https://via.placeholder.com/800x400?text=GreenLeaf+Banner',
      status: 'OPEN',
      rating: 4.8,
      reviewCount: 124,
      distance: '2.5 km away',
      description: 'Fresh organic produce direct from local farms. We specialize in seasonal vegetables, exotic fruits, and artisanal dairy products.',
      pickupTime: '15-20 min',
      deliveryTerms: 'No min order',
      categories: ['Vegetables', 'Fruits', 'Dairy', 'Bakery', 'Meat', 'Beverages'],
    );
  }

  void startShopping() {
    // Logic to start shopping
  }
}
