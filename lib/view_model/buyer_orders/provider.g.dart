// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuyerOrdersViewModel)
final buyerOrdersViewModelProvider = BuyerOrdersViewModelProvider._();

final class BuyerOrdersViewModelProvider
    extends $NotifierProvider<BuyerOrdersViewModel, BuyerOrdersViewModelState> {
  BuyerOrdersViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyerOrdersViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyerOrdersViewModelHash();

  @$internal
  @override
  BuyerOrdersViewModel create() => BuyerOrdersViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyerOrdersViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyerOrdersViewModelState>(value),
    );
  }
}

String _$buyerOrdersViewModelHash() =>
    r'f5eb4790dcb4195d008bacadd84d7b65d55ed196';

abstract class _$BuyerOrdersViewModel
    extends $Notifier<BuyerOrdersViewModelState> {
  BuyerOrdersViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<BuyerOrdersViewModelState, BuyerOrdersViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuyerOrdersViewModelState, BuyerOrdersViewModelState>,
              BuyerOrdersViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
