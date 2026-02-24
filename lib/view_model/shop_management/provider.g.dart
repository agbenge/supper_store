// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopManagementViewModel)
final shopManagementViewModelProvider = ShopManagementViewModelProvider._();

final class ShopManagementViewModelProvider
    extends
        $NotifierProvider<
          ShopManagementViewModel,
          ShopManagementViewModelState
        > {
  ShopManagementViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopManagementViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopManagementViewModelHash();

  @$internal
  @override
  ShopManagementViewModel create() => ShopManagementViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopManagementViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopManagementViewModelState>(value),
    );
  }
}

String _$shopManagementViewModelHash() =>
    r'12e2fbbe84cfc6d7251c692b0a16fb2a503ca060';

abstract class _$ShopManagementViewModel
    extends $Notifier<ShopManagementViewModelState> {
  ShopManagementViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<ShopManagementViewModelState, ShopManagementViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ShopManagementViewModelState,
                ShopManagementViewModelState
              >,
              ShopManagementViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
