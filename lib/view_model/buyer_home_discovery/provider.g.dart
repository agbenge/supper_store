// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuyerHomeDiscoveryViewModel)
final buyerHomeDiscoveryViewModelProvider =
    BuyerHomeDiscoveryViewModelProvider._();

final class BuyerHomeDiscoveryViewModelProvider
    extends
        $NotifierProvider<
          BuyerHomeDiscoveryViewModel,
          BuyerHomeDiscoveryViewModelState
        > {
  BuyerHomeDiscoveryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyerHomeDiscoveryViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyerHomeDiscoveryViewModelHash();

  @$internal
  @override
  BuyerHomeDiscoveryViewModel create() => BuyerHomeDiscoveryViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyerHomeDiscoveryViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyerHomeDiscoveryViewModelState>(
        value,
      ),
    );
  }
}

String _$buyerHomeDiscoveryViewModelHash() =>
    r'5f10dfa5afe7d6df3b2bbfe1ce073ceaa4d615e7';

abstract class _$BuyerHomeDiscoveryViewModel
    extends $Notifier<BuyerHomeDiscoveryViewModelState> {
  BuyerHomeDiscoveryViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              BuyerHomeDiscoveryViewModelState,
              BuyerHomeDiscoveryViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                BuyerHomeDiscoveryViewModelState,
                BuyerHomeDiscoveryViewModelState
              >,
              BuyerHomeDiscoveryViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
