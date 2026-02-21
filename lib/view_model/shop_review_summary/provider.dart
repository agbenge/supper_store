import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ShopReviewSummaryViewModel extends _$ShopReviewSummaryViewModel {
  @override
  ShopReviewSummaryViewModelState build() {
    return const ShopReviewSummaryViewModelState(
      averageRating: 4.8,
      totalReviews: 124,
      ratingDistribution: {
        5: 0.85,
        4: 0.10,
        3: 0.03,
        2: 0.01,
        1: 0.01,
      },
      recentReviews: [
        ShopReview(author: 'Sarah J.', comment: 'Great service and fresh produce! Always reliable.', date: 'Today', rating: 5),
        ShopReview(author: 'Michael R.', comment: 'Fast pickup, but the packaging could be better.', date: 'Yesterday', rating: 4),
        ShopReview(author: 'Emily D.', comment: 'Perfect as always. Highly recommend the coffee beans.', date: '2 days ago', rating: 5),
      ],
    );
  }
}
