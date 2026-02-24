// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileDetailsViewModel)
final profileDetailsViewModelProvider = ProfileDetailsViewModelProvider._();

final class ProfileDetailsViewModelProvider
    extends
        $NotifierProvider<
          ProfileDetailsViewModel,
          ProfileDetailsViewModelState
        > {
  ProfileDetailsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileDetailsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileDetailsViewModelHash();

  @$internal
  @override
  ProfileDetailsViewModel create() => ProfileDetailsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileDetailsViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileDetailsViewModelState>(value),
    );
  }
}

String _$profileDetailsViewModelHash() =>
    r'bc8af3cc0ae5d489ee627233b9e5d79acaec3c4b';

abstract class _$ProfileDetailsViewModel
    extends $Notifier<ProfileDetailsViewModelState> {
  ProfileDetailsViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<ProfileDetailsViewModelState, ProfileDetailsViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ProfileDetailsViewModelState,
                ProfileDetailsViewModelState
              >,
              ProfileDetailsViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
