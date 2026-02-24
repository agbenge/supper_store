class CartItemModel {
  final String id;
  final String title;
  final double price;
  final int quantity;
  final String imageUrl;
  final String shopId;

  CartItemModel({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.imageUrl,
    required this.shopId,
  });

  CartItemModel copyWith({
    String? id,
    String? title,
    double? price,
    int? quantity,
    String? imageUrl,
    String? shopId,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      imageUrl: imageUrl ?? this.imageUrl,
      shopId: shopId ?? this.shopId,
    );
  }
}

class CartState {
  final Map<String, List<CartItemModel>> itemsByShop;

  const CartState({this.itemsByShop = const {}});

  CartState copyWith({Map<String, List<CartItemModel>>? itemsByShop}) {
    return CartState(itemsByShop: itemsByShop ?? this.itemsByShop);
  }
}
