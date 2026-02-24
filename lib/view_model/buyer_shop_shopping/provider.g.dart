// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuyerShopShoppingViewModel)
final buyerShopShoppingViewModelProvider = BuyerShopShoppingViewModelFamily._();

final class BuyerShopShoppingViewModelProvider
    extends
        $NotifierProvider<BuyerShopShoppingViewModel, BuyerShopShoppingState> {
  BuyerShopShoppingViewModelProvider._({
    required BuyerShopShoppingViewModelFamily super.from,
    required NearbyShop super.argument,
  }) : super(
         retry: null,
         name: r'buyerShopShoppingViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$buyerShopShoppingViewModelHash();

  @override
  String toString() {
    return r'buyerShopShoppingViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BuyerShopShoppingViewModel create() => BuyerShopShoppingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyerShopShoppingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyerShopShoppingState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BuyerShopShoppingViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$buyerShopShoppingViewModelHash() =>
    r'abb84a26f1a1f684ecda1d24e8b97055932a3d90';

final class BuyerShopShoppingViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          BuyerShopShoppingViewModel,
          BuyerShopShoppingState,
          BuyerShopShoppingState,
          BuyerShopShoppingState,
          NearbyShop
        > {
  BuyerShopShoppingViewModelFamily._()
    : super(
        retry: null,
        name: r'buyerShopShoppingViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BuyerShopShoppingViewModelProvider call(NearbyShop shop) =>
      BuyerShopShoppingViewModelProvider._(argument: shop, from: this);

  @override
  String toString() => r'buyerShopShoppingViewModelProvider';
}

abstract class _$BuyerShopShoppingViewModel
    extends $Notifier<BuyerShopShoppingState> {
  late final _$args = ref.$arg as NearbyShop;
  NearbyShop get shop => _$args;

  BuyerShopShoppingState build(NearbyShop shop);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<BuyerShopShoppingState, BuyerShopShoppingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BuyerShopShoppingState, BuyerShopShoppingState>,
              BuyerShopShoppingState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
