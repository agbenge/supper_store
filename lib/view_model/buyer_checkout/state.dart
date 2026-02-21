class CartItem {
  final String title;
  final String edition;
  final String price;
  final String imageUrl;
  final int quantity;

  const CartItem({
    required this.title,
    required this.edition,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });
}

class BuyerCheckoutViewModelState {
  final String shopName;
  final List<CartItem> items;
  final String pickupTimeSlot;
  final String pickupStatus;
  final String subtotal;
  final String tax;
  final String total;

  const BuyerCheckoutViewModelState({
    this.shopName = '',
    this.items = const [],
    this.pickupTimeSlot = '',
    this.pickupStatus = '',
    this.subtotal = '',
    this.tax = '',
    this.total = '',
  });

  BuyerCheckoutViewModelState copyWith({
    String? shopName,
    List<CartItem>? items,
    String? pickupTimeSlot,
    String? pickupStatus,
    String? subtotal,
    String? tax,
    String? total,
  }) {
    return BuyerCheckoutViewModelState(
      shopName: shopName ?? this.shopName,
      items: items ?? this.items,
      pickupTimeSlot: pickupTimeSlot ?? this.pickupTimeSlot,
      pickupStatus: pickupStatus ?? this.pickupStatus,
      subtotal: subtotal ?? this.subtotal,
      tax: tax ?? this.tax,
      total: total ?? this.total,
    );
  }
}
