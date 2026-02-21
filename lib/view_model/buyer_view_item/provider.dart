import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class BuyerViewItemViewModel extends _$BuyerViewItemViewModel {
  @override
  BuyerViewItemViewModelState build() {
    return const BuyerViewItemViewModelState(
      title: 'Pro-Wireless X1',
      imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBJauLeKivJsQcdnApsiX2WcCC5dvi4TkZXB-vpvzCxyrGEC702eJfWu3FmOB01ZpqFFYss7OoZeXY-6VWyIOS-jP-8wBJowkYBR966KwtUnAj_bf7-AwtHgy9obA_vL51Jt_-PMAwR4LsIq_Y8bMkjs2YEWds6vMVYjQ1WwnjFht22l6YHF-o_li9-GJTrwQDV_GdnQJ91SDAjuqEFqW1k_En7AzNAN5tu1m37rdcRPO7FpnMyrL1C3clxNIN9cOhTLkNXbK3w4I4',
      price: '\$199.99',
      rating: 4.9,
      description: 'Experience high-fidelity audio with the Pro-Wireless X1. Featuring advanced active noise cancellation, 40-hour battery life, and ultra-soft memory foam ear cups for all-day comfort. Perfect for commuters and audiophiles alike.',
      shop: BuyerShopSummary(
        name: 'TechHaven Electronics',
        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBO8nljuQbItub9YC_fezTmN7jY5gHGYA3WMm2s-8461tkWCpIFCfgqDabIAkC1LEt6NWOoMMzUa_1E0slbj88UCehTGtJa2MLXX40vNqsKkHB8tVRlF9f20APiKwxp8yeaP9SHAM_BfdsWSe01nZVGMG0q6bbCs-yT7X8-s59N-5Tcr9YhnCaG9LQEoX6y8mycCkvTX3SVd4KfVcDZQ4gAjGOYHK2Cp3Tkim8b7DFdDGtOIBrQ9IKPhVO_eJU1nUm7inzvky94dcE',
        distance: '1.2 km away',
      ),
      fulfillmentInfo: 'Items will be ready for pickup 3-5 business days after order.',
      pickupWindow: 'Available between 9:00 AM - 7:00 PM on weekdays.',
      quantity: 1,
    );
  }

  void incrementQuantity() {
    state = state.copyWith(quantity: state.quantity + 1);
  }

  void decrementQuantity() {
    if (state.quantity > 1) {
      state = state.copyWith(quantity: state.quantity - 1);
    }
  }

  void addToCart() {
    // Logic to add to cart
  }
}
