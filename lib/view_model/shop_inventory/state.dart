class InventoryItem {
  final String title;
  final String category;
  final String stock;
  final String price;
  final bool isLowStock;

  const InventoryItem({
    required this.title,
    required this.category,
    required this.stock,
    required this.price,
    required this.isLowStock,
  });
}

class ShopInventoryViewModelState {
  final List<InventoryItem> items;
  final String selectedFilter;
  final int totalItems;
  final int lowStockCount;

  const ShopInventoryViewModelState({
    this.items = const [],
    this.selectedFilter = 'All Items',
    this.totalItems = 0,
    this.lowStockCount = 0,
  });

  ShopInventoryViewModelState copyWith({
    List<InventoryItem>? items,
    String? selectedFilter,
    int? totalItems,
    int? lowStockCount,
  }) {
    return ShopInventoryViewModelState(
      items: items ?? this.items,
      selectedFilter: selectedFilter ?? this.selectedFilter,
      totalItems: totalItems ?? this.totalItems,
      lowStockCount: lowStockCount ?? this.lowStockCount,
    );
  }
}
