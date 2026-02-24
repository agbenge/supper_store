// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CartViewModel)
final cartViewModelProvider = CartViewModelProvider._();

final class CartViewModelProvider
    extends $NotifierProvider<CartViewModel, CartState> {
  CartViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cartViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cartViewModelHash();

  @$internal
  @override
  CartViewModel create() => CartViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CartState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CartState>(value),
    );
  }
}

String _$cartViewModelHash() => r'fb4965f9a140889c35a22a0b46c5bb6ec3ef10a4';

abstract class _$CartViewModel extends $Notifier<CartState> {
  CartState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CartState, CartState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CartState, CartState>,
              CartState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
