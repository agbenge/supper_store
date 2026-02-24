// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopTeamRolesViewModel)
final shopTeamRolesViewModelProvider = ShopTeamRolesViewModelProvider._();

final class ShopTeamRolesViewModelProvider
    extends
        $NotifierProvider<ShopTeamRolesViewModel, ShopTeamRolesViewModelState> {
  ShopTeamRolesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopTeamRolesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopTeamRolesViewModelHash();

  @$internal
  @override
  ShopTeamRolesViewModel create() => ShopTeamRolesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopTeamRolesViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopTeamRolesViewModelState>(value),
    );
  }
}

String _$shopTeamRolesViewModelHash() =>
    r'e3d2a08c34dba253d8c5791f5817b2f99b820609';

abstract class _$ShopTeamRolesViewModel
    extends $Notifier<ShopTeamRolesViewModelState> {
  ShopTeamRolesViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<ShopTeamRolesViewModelState, ShopTeamRolesViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ShopTeamRolesViewModelState,
                ShopTeamRolesViewModelState
              >,
              ShopTeamRolesViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
