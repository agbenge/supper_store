// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BuyerCheckoutViewModel)
final buyerCheckoutViewModelProvider = BuyerCheckoutViewModelProvider._();

final class BuyerCheckoutViewModelProvider
    extends
        $NotifierProvider<BuyerCheckoutViewModel, BuyerCheckoutViewModelState> {
  BuyerCheckoutViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyerCheckoutViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyerCheckoutViewModelHash();

  @$internal
  @override
  BuyerCheckoutViewModel create() => BuyerCheckoutViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyerCheckoutViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyerCheckoutViewModelState>(value),
    );
  }
}

String _$buyerCheckoutViewModelHash() =>
    r'489a460739cf5e971c7ff70774975bb36ee5b638';

abstract class _$BuyerCheckoutViewModel
    extends $Notifier<BuyerCheckoutViewModelState> {
  BuyerCheckoutViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<BuyerCheckoutViewModelState, BuyerCheckoutViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                BuyerCheckoutViewModelState,
                BuyerCheckoutViewModelState
              >,
              BuyerCheckoutViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
