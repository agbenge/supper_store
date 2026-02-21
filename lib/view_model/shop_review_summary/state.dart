class ShopReview {
  final String author;
  final String comment;
  final String date;
  final int rating;

  const ShopReview({
    required this.author,
    required this.comment,
    required this.date,
    required this.rating,
  });
}

class ShopReviewSummaryViewModelState {
  final double averageRating;
  final int totalReviews;
  final Map<int, double> ratingDistribution; // 1-5 stars to percentage
  final List<ShopReview> recentReviews;

  const ShopReviewSummaryViewModelState({
    this.averageRating = 0.0,
    this.totalReviews = 0,
    this.ratingDistribution = const {},
    this.recentReviews = const [],
  });

  ShopReviewSummaryViewModelState copyWith({
    double? averageRating,
    int? totalReviews,
    Map<int, double>? ratingDistribution,
    List<ShopReview>? recentReviews,
  }) {
    return ShopReviewSummaryViewModelState(
      averageRating: averageRating ?? this.averageRating,
      totalReviews: totalReviews ?? this.totalReviews,
      ratingDistribution: ratingDistribution ?? this.ratingDistribution,
      recentReviews: recentReviews ?? this.recentReviews,
    );
  }
}
