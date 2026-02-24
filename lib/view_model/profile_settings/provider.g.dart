// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileSettingsViewModel)
final profileSettingsViewModelProvider = ProfileSettingsViewModelProvider._();

final class ProfileSettingsViewModelProvider
    extends
        $NotifierProvider<
          ProfileSettingsViewModel,
          ProfileSettingsViewModelState
        > {
  ProfileSettingsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileSettingsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileSettingsViewModelHash();

  @$internal
  @override
  ProfileSettingsViewModel create() => ProfileSettingsViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileSettingsViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileSettingsViewModelState>(
        value,
      ),
    );
  }
}

String _$profileSettingsViewModelHash() =>
    r'5e591a963019834fc4da85f08ac4e3c75bb73d18';

abstract class _$ProfileSettingsViewModel
    extends $Notifier<ProfileSettingsViewModelState> {
  ProfileSettingsViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ProfileSettingsViewModelState,
              ProfileSettingsViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ProfileSettingsViewModelState,
                ProfileSettingsViewModelState
              >,
              ProfileSettingsViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
