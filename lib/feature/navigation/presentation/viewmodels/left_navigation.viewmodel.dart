import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../helpers/utils.dart';
import '../../../../shared/providers/shared_providers.dart';
import '../../../../styles/colors.dart';
import '../../data/models/left_navigation.dart';

class LeftNavigationViewModel extends StateNotifier<List<LeftNavigationItem>> {
  final Ref ref;
  LeftNavigationViewModel(List<LeftNavigationItem> items, this.ref)
      : super([]) {
    state = items;

    var item = state.first;
    selectNavItem(item);
  }

  void selectNavItem(LeftNavigationItem item) {
    if (item.route.isNotEmpty) {
      GoRouter.of(Utils.tabNav.currentContext!).go(item.route);
    }

    ref.read(pageColorProvider.notifier).state =
        PersonalPortfolioColors.pageColor[item.route]!;
    state = [
      for (var element in state) element.copyWith(isSelected: item == element)
    ];
  }
}
