// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopProfileViewViewModel)
final shopProfileViewViewModelProvider = ShopProfileViewViewModelProvider._();

final class ShopProfileViewViewModelProvider
    extends
        $NotifierProvider<
          ShopProfileViewViewModel,
          ShopProfileViewViewModelState
        > {
  ShopProfileViewViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopProfileViewViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopProfileViewViewModelHash();

  @$internal
  @override
  ShopProfileViewViewModel create() => ShopProfileViewViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopProfileViewViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopProfileViewViewModelState>(
        value,
      ),
    );
  }
}

String _$shopProfileViewViewModelHash() =>
    r'0abcf01c5665dc5405483a4442c77becd2f31a7b';

abstract class _$ShopProfileViewViewModel
    extends $Notifier<ShopProfileViewViewModelState> {
  ShopProfileViewViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ShopProfileViewViewModelState,
              ShopProfileViewViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ShopProfileViewViewModelState,
                ShopProfileViewViewModelState
              >,
              ShopProfileViewViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
