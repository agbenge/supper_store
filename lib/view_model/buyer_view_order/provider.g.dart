// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuyerViewOrderViewModel)
final buyerViewOrderViewModelProvider = BuyerViewOrderViewModelProvider._();

final class BuyerViewOrderViewModelProvider
    extends
        $NotifierProvider<
          BuyerViewOrderViewModel,
          BuyerViewOrderViewModelState
        > {
  BuyerViewOrderViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyerViewOrderViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyerViewOrderViewModelHash();

  @$internal
  @override
  BuyerViewOrderViewModel create() => BuyerViewOrderViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyerViewOrderViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyerViewOrderViewModelState>(value),
    );
  }
}

String _$buyerViewOrderViewModelHash() =>
    r'9df8b318c71f3624bc4c3f55fd454adef3d29c8f';

abstract class _$BuyerViewOrderViewModel
    extends $Notifier<BuyerViewOrderViewModelState> {
  BuyerViewOrderViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<BuyerViewOrderViewModelState, BuyerViewOrderViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                BuyerViewOrderViewModelState,
                BuyerViewOrderViewModelState
              >,
              BuyerViewOrderViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
