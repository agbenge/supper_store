// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuyerViewItemViewModel)
final buyerViewItemViewModelProvider = BuyerViewItemViewModelProvider._();

final class BuyerViewItemViewModelProvider
    extends
        $NotifierProvider<BuyerViewItemViewModel, BuyerViewItemViewModelState> {
  BuyerViewItemViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyerViewItemViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyerViewItemViewModelHash();

  @$internal
  @override
  BuyerViewItemViewModel create() => BuyerViewItemViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyerViewItemViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyerViewItemViewModelState>(value),
    );
  }
}

String _$buyerViewItemViewModelHash() =>
    r'9438dd9336c65e7e3852b2d3f6fb908c7c751178';

abstract class _$BuyerViewItemViewModel
    extends $Notifier<BuyerViewItemViewModelState> {
  BuyerViewItemViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<BuyerViewItemViewModelState, BuyerViewItemViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                BuyerViewItemViewModelState,
                BuyerViewItemViewModelState
              >,
              BuyerViewItemViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
