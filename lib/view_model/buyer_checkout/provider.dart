import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class BuyerCheckoutViewModel extends _$BuyerCheckoutViewModel {
  @override
  BuyerCheckoutViewModelState build() {
    return const BuyerCheckoutViewModelState(
      shopName: 'TechHaven Electronics',
      items: [
        CartItem(
          title: 'Pro-Wireless X1',
          edition: 'Midnight Blue Edition',
          price: '\$199.99',
          imageUrl: 'https://via.placeholder.com/80',
          quantity: 1,
        ),
        CartItem(
          title: 'SwiftRun Sneakers',
          edition: 'Size 10.5 • Sport White',
          price: '\$89.50',
          imageUrl: 'https://via.placeholder.com/80',
          quantity: 1,
        ),
      ],
      pickupTimeSlot: 'Today, 4:30 PM - 5:00 PM',
      pickupStatus: 'Ready for pickup in 45 mins',
      subtotal: '\$289.49',
      tax: '\$12.45',
      total: '\$301.94',
    );
  }

  void changePickupTime() {
    // Logic to change pickup time
  }

  void confirmOrder() {
    // Logic to confirm order
  }
}
