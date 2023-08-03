import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_rportifolio/feature/navigation/presentation/widgets/left_navigation_item_tile.dart';

import '../providers/navigation_providers.dart';

class LeftNavigation extends ConsumerWidget {
  const LeftNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var navItems = ref.watch(navigationItemsViewModelProvider);

    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.withOpacity(0.25),
          Colors.transparent,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: List.generate(navItems.length, (index) {
            // TODO: add the LeftNavigationItemTile widgets here
            return LeftNavigationItemTile(item: navItems[index]);
          }),
        ));
  }
}
