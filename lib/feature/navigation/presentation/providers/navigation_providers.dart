import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/left_navigation.dart';
import '../../data/repositories/inavigation.repository.dart';
import '../../data/repositories/mock_navigation.repository.dart';
import '../viewmodels/left_navigation.viewmodel.dart';

final navigationRepositoryProvider = Provider<INavigationRepository>((ref) {
  return MockNavigationRepository();
});

final navigationItemsProvider = Provider<List<LeftNavigationItem>>((ref) {
  return ref.read(navigationRepositoryProvider).getDefaultNavItems();
});
final navigationItemsViewModelProvider =
    StateNotifierProvider<LeftNavigationViewModel, List<LeftNavigationItem>>(
        (ref) {
  var items = ref.read(navigationItemsProvider);
  return LeftNavigationViewModel(items, ref);
});
