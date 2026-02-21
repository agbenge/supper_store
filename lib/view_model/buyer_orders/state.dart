class BuyerOrder {
  final String shopName;
  final String orderId;
  final String status;
  final String imageUrl;
  final String price;
  final double progress;
  final List<String> steps;
  final int currentStep;
  final bool hasActions;

  const BuyerOrder({
    required this.shopName,
    required this.orderId,
    required this.status,
    required this.imageUrl,
    required this.price,
    required this.progress,
    required this.steps,
    required this.currentStep,
    this.hasActions = false,
  });
}

class BuyerOrdersViewModelState {
  final List<BuyerOrder> activeOrders;
  final List<BuyerOrder> pastOrders;
  final int selectedTabIndex;

  const BuyerOrdersViewModelState({
    this.activeOrders = const [],
    this.pastOrders = const [],
    this.selectedTabIndex = 0,
  });

  BuyerOrdersViewModelState copyWith({
    List<BuyerOrder>? activeOrders,
    List<BuyerOrder>? pastOrders,
    int? selectedTabIndex,
  }) {
    return BuyerOrdersViewModelState(
      activeOrders: activeOrders ?? this.activeOrders,
      pastOrders: pastOrders ?? this.pastOrders,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }
}
