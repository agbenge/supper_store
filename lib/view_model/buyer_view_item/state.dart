class BuyerShopSummary {
  final String name;
  final String imageUrl;
  final String distance;

  const BuyerShopSummary({
    required this.name,
    required this.imageUrl,
    required this.distance,
  });
}

class BuyerViewItemViewModelState {
  final String title;
  final String imageUrl;
  final String price;
  final double rating;
  final String description;
  final BuyerShopSummary shop;
  final String fulfillmentInfo;
  final String pickupWindow;
  final int quantity;

  const BuyerViewItemViewModelState({
    this.title = '',
    this.imageUrl = '',
    this.price = '',
    this.rating = 0.0,
    this.description = '',
    this.shop = const BuyerShopSummary(name: '', imageUrl: '', distance: ''),
    this.fulfillmentInfo = '',
    this.pickupWindow = '',
    this.quantity = 1,
  });

  BuyerViewItemViewModelState copyWith({
    String? title,
    String? imageUrl,
    String? price,
    double? rating,
    String? description,
    BuyerShopSummary? shop,
    String? fulfillmentInfo,
    String? pickupWindow,
    int? quantity,
  }) {
    return BuyerViewItemViewModelState(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      shop: shop ?? this.shop,
      fulfillmentInfo: fulfillmentInfo ?? this.fulfillmentInfo,
      pickupWindow: pickupWindow ?? this.pickupWindow,
      quantity: quantity ?? this.quantity,
    );
  }
}
