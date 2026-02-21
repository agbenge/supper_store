import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class MainNavigationViewModel extends _$MainNavigationViewModel {
  @override
  int build() {
    return 0; // Default to the first tab
  }

  void setTab(int index) {
    state = index;
  }
}
