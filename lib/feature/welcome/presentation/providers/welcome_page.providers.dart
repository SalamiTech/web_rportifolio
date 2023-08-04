import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/iwelcome.repository.dart';
import '../../data/repositories/mockwelcome.repository.dart';
import '../viewmodels/greetings_label.viewmodel.dart';
import '../viewmodels/welcome.viewmodel.dart';

final welcomeRepositoryProvider = Provider<IWelcomeRepository>((ref) {
  return MockWelcomeRepository();
});

final welcomeViewModelProvider = Provider<WelcomePageViewModel>((ref) {
  var repository = ref.read(welcomeRepositoryProvider);
  return WelcomePageViewModel(repository, ref);
});

final welcomeProvider = FutureProvider((ref) {
  final welcomeVM = ref.read(welcomeViewModelProvider);
  return welcomeVM.getWelcomePageData();
});

final greetingsRawListProvider = StateProvider<List<String>>((ref) {
  return [];
});

final greetingsViewModelProvider =
    StateNotifierProvider<GreetingsViewModel, String>((ref) {
  var greetings = ref.watch(greetingsRawListProvider);
  return GreetingsViewModel(greetings.first, greetings);
});
