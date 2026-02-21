class ShopProfileViewViewModelState {
  final String shopName;
  final String bannerUrl;
  final String status; // e.g., 'OPEN', 'CLOSED'
  final double rating;
  final int reviewCount;
  final String distance;
  final String description;
  final String pickupTime;
  final String deliveryTerms;
  final List<String> categories;

  const ShopProfileViewViewModelState({
    this.shopName = '',
    this.bannerUrl = '',
    this.status = '',
    this.rating = 0.0,
    this.reviewCount = 0,
    this.distance = '',
    this.description = '',
    this.pickupTime = '',
    this.deliveryTerms = '',
    this.categories = const [],
  });

  ShopProfileViewViewModelState copyWith({
    String? shopName,
    String? bannerUrl,
    String? status,
    double? rating,
    int? reviewCount,
    String? distance,
    String? description,
    String? pickupTime,
    String? deliveryTerms,
    List<String>? categories,
  }) {
    return ShopProfileViewViewModelState(
      shopName: shopName ?? this.shopName,
      bannerUrl: bannerUrl ?? this.bannerUrl,
      status: status ?? this.status,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      distance: distance ?? this.distance,
      description: description ?? this.description,
      pickupTime: pickupTime ?? this.pickupTime,
      deliveryTerms: deliveryTerms ?? this.deliveryTerms,
      categories: categories ?? this.categories,
    );
  }
}
