// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileAndShopServicesViewModel)
final profileAndShopServicesViewModelProvider =
    ProfileAndShopServicesViewModelProvider._();

final class ProfileAndShopServicesViewModelProvider
    extends
        $NotifierProvider<
          ProfileAndShopServicesViewModel,
          ProfileAndShopServicesViewModelState
        > {
  ProfileAndShopServicesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileAndShopServicesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileAndShopServicesViewModelHash();

  @$internal
  @override
  ProfileAndShopServicesViewModel create() => ProfileAndShopServicesViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileAndShopServicesViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<ProfileAndShopServicesViewModelState>(value),
    );
  }
}

String _$profileAndShopServicesViewModelHash() =>
    r'3f304c71cc8139ac86f6bcb7f33d237fd4752f41';

abstract class _$ProfileAndShopServicesViewModel
    extends $Notifier<ProfileAndShopServicesViewModelState> {
  ProfileAndShopServicesViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ProfileAndShopServicesViewModelState,
              ProfileAndShopServicesViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ProfileAndShopServicesViewModelState,
                ProfileAndShopServicesViewModelState
              >,
              ProfileAndShopServicesViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
