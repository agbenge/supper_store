// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopReviewSummaryViewModel)
final shopReviewSummaryViewModelProvider =
    ShopReviewSummaryViewModelProvider._();

final class ShopReviewSummaryViewModelProvider
    extends
        $NotifierProvider<
          ShopReviewSummaryViewModel,
          ShopReviewSummaryViewModelState
        > {
  ShopReviewSummaryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopReviewSummaryViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopReviewSummaryViewModelHash();

  @$internal
  @override
  ShopReviewSummaryViewModel create() => ShopReviewSummaryViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopReviewSummaryViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopReviewSummaryViewModelState>(
        value,
      ),
    );
  }
}

String _$shopReviewSummaryViewModelHash() =>
    r'9d5ecf36246dd56bc600820b6e8b6c2b26de8b4f';

abstract class _$ShopReviewSummaryViewModel
    extends $Notifier<ShopReviewSummaryViewModelState> {
  ShopReviewSummaryViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ShopReviewSummaryViewModelState,
              ShopReviewSummaryViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ShopReviewSummaryViewModelState,
                ShopReviewSummaryViewModelState
              >,
              ShopReviewSummaryViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
