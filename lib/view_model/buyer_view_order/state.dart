class OrderItem {
  final String qty;
  final String name;
  final String price;

  const OrderItem({
    required this.qty,
    required this.name,
    required this.price,
  });
}

class OrderStep {
  final String label;
  final bool completed;
  final bool isActive;

  const OrderStep({
    required this.label,
    required this.completed,
    this.isActive = false,
  });
}

class BuyerViewOrderViewModelState {
  final String orderId;
  final String shopName;
  final String shopAddress;
  final String shopImageUrl;
  final List<OrderStep> steps;
  final double progress; // 0.0 to 1.0 for the progress bar
  final String qrCodeUrl;
  final String verificationCode;
  final List<OrderItem> items;
  final String totalAmount;

  const BuyerViewOrderViewModelState({
    this.orderId = '',
    this.shopName = '',
    this.shopAddress = '',
    this.shopImageUrl = '',
    this.steps = const [],
    this.progress = 0.0,
    this.qrCodeUrl = '',
    this.verificationCode = '',
    this.items = const [],
    this.totalAmount = '',
  });

  BuyerViewOrderViewModelState copyWith({
    String? orderId,
    String? shopName,
    String? shopAddress,
    String? shopImageUrl,
    List<OrderStep>? steps,
    double? progress,
    String? qrCodeUrl,
    String? verificationCode,
    List<OrderItem>? items,
    String? totalAmount,
  }) {
    return BuyerViewOrderViewModelState(
      orderId: orderId ?? this.orderId,
      shopName: shopName ?? this.shopName,
      shopAddress: shopAddress ?? this.shopAddress,
      shopImageUrl: shopImageUrl ?? this.shopImageUrl,
      steps: steps ?? this.steps,
      progress: progress ?? this.progress,
      qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
      verificationCode: verificationCode ?? this.verificationCode,
      items: items ?? this.items,
      totalAmount: totalAmount ?? this.totalAmount,
    );
  }
}
