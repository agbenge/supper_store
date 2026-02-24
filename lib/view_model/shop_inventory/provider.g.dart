// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopInventoryViewModel)
final shopInventoryViewModelProvider = ShopInventoryViewModelProvider._();

final class ShopInventoryViewModelProvider
    extends
        $NotifierProvider<ShopInventoryViewModel, ShopInventoryViewModelState> {
  ShopInventoryViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopInventoryViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopInventoryViewModelHash();

  @$internal
  @override
  ShopInventoryViewModel create() => ShopInventoryViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopInventoryViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopInventoryViewModelState>(value),
    );
  }
}

String _$shopInventoryViewModelHash() =>
    r'355c8a4eb43ceb457ed17ef234bdbf7345468212';

abstract class _$ShopInventoryViewModel
    extends $Notifier<ShopInventoryViewModelState> {
  ShopInventoryViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<ShopInventoryViewModelState, ShopInventoryViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ShopInventoryViewModelState,
                ShopInventoryViewModelState
              >,
              ShopInventoryViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
