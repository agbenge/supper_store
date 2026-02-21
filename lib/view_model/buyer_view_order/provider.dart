import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class BuyerViewOrderViewModel extends _$BuyerViewOrderViewModel {
  @override
  BuyerViewOrderViewModelState build() {
    return const BuyerViewOrderViewModelState(
      orderId: 'TRK-88291',
      shopName: 'GreenLeaf Groceries',
      shopAddress: '124 Market St, San Francisco, CA',
      shopImageUrl: 'https://via.placeholder.com/48',
      steps: [
        OrderStep(label: 'Order Placed', completed: true),
        OrderStep(label: 'Confirmed', completed: true),
        OrderStep(label: 'Packed', completed: true),
        OrderStep(label: 'Ready', completed: true, isActive: true),
      ],
      progress: 0.75,
      qrCodeUrl: 'https://via.placeholder.com/192',
      verificationCode: '882-A91',
      items: [
        OrderItem(qty: '1x', name: 'Organic Avocados (3pk)', price: '\$8.50'),
        OrderItem(qty: '2x', name: 'Whole Grain Bread', price: '\$11.00'),
        OrderItem(qty: '1x', name: 'Oat Milk 1L', price: '\$4.25'),
      ],
      totalAmount: '\$23.75',
    );
  }

  void getDirections() {
    // Logic to get directions
  }

  void contactShop() {
    // Logic to contact shop
  }

  void confirmPickup() {
    // Logic to confirm pickup
  }
}
