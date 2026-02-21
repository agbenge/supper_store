class ShopManagementViewModelState {
  final double todaySales;
  final int activeOrders;
  final int newReviews;
  final int lowStockCount;
  final String shopName;
  final String ownerName;

  const ShopManagementViewModelState({
    this.todaySales = 0.0,
    this.activeOrders = 0,
    this.newReviews = 0,
    this.lowStockCount = 0,
    this.shopName = '',
    this.ownerName = '',
  });

  ShopManagementViewModelState copyWith({
    double? todaySales,
    int? activeOrders,
    int? newReviews,
    int? lowStockCount,
    String? shopName,
    String? ownerName,
  }) {
    return ShopManagementViewModelState(
      todaySales: todaySales ?? this.todaySales,
      activeOrders: activeOrders ?? this.activeOrders,
      newReviews: newReviews ?? this.newReviews,
      lowStockCount: lowStockCount ?? this.lowStockCount,
      shopName: shopName ?? this.shopName,
      ownerName: ownerName ?? this.ownerName,
    );
  }
}
