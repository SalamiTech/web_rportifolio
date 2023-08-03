import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/welcome_page.model.dart';
import '../../data/repositories/iwelcome.repository.dart';

class WelcomePageViewModel {
  final Ref ref;
  final IWelcomeRepository welcomeRepository;

  WelcomePageViewModel(this.welcomeRepository, this.ref);

  Future<WelcomePageModel> getWelcomePageData() async {
    var welcomePageData = await welcomeRepository.getWelcomePageData();
    return welcomePageData;
  }
}
