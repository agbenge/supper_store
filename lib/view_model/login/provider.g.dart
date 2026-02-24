// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginViewModel)
final loginViewModelProvider = LoginViewModelProvider._();

final class LoginViewModelProvider
    extends $NotifierProvider<LoginViewModel, LoginViewModelState> {
  LoginViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginViewModelHash();

  @$internal
  @override
  LoginViewModel create() => LoginViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginViewModelState>(value),
    );
  }
}

String _$loginViewModelHash() => r'e20d01be1365901949a18953b756f31b3ca8a2e3';

abstract class _$LoginViewModel extends $Notifier<LoginViewModelState> {
  LoginViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<LoginViewModelState, LoginViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginViewModelState, LoginViewModelState>,
              LoginViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
