// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileRegistrationViewModel)
final profileRegistrationViewModelProvider =
    ProfileRegistrationViewModelProvider._();

final class ProfileRegistrationViewModelProvider
    extends
        $NotifierProvider<
          ProfileRegistrationViewModel,
          ProfileRegistrationViewModelState
        > {
  ProfileRegistrationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRegistrationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRegistrationViewModelHash();

  @$internal
  @override
  ProfileRegistrationViewModel create() => ProfileRegistrationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileRegistrationViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileRegistrationViewModelState>(
        value,
      ),
    );
  }
}

String _$profileRegistrationViewModelHash() =>
    r'e318654ae2e698154a8fd7f98aa7e0a08e757570';

abstract class _$ProfileRegistrationViewModel
    extends $Notifier<ProfileRegistrationViewModelState> {
  ProfileRegistrationViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ProfileRegistrationViewModelState,
              ProfileRegistrationViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ProfileRegistrationViewModelState,
                ProfileRegistrationViewModelState
              >,
              ProfileRegistrationViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
