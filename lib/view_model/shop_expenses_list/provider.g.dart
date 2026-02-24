// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShopExpensesListViewModel)
final shopExpensesListViewModelProvider = ShopExpensesListViewModelProvider._();

final class ShopExpensesListViewModelProvider
    extends
        $NotifierProvider<
          ShopExpensesListViewModel,
          ShopExpensesListViewModelState
        > {
  ShopExpensesListViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopExpensesListViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopExpensesListViewModelHash();

  @$internal
  @override
  ShopExpensesListViewModel create() => ShopExpensesListViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopExpensesListViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopExpensesListViewModelState>(
        value,
      ),
    );
  }
}

String _$shopExpensesListViewModelHash() =>
    r'a32834fe0b2703d79c4a7dedbedf2f48d63b7b50';

abstract class _$ShopExpensesListViewModel
    extends $Notifier<ShopExpensesListViewModelState> {
  ShopExpensesListViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ShopExpensesListViewModelState,
              ShopExpensesListViewModelState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ShopExpensesListViewModelState,
                ShopExpensesListViewModelState
              >,
              ShopExpensesListViewModelState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
