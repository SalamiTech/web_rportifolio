import 'package:web_rportifolio/features/navigation/data/models/left_navigation.dart';

abstract class INavigationRepository {
  List<LeftNavigationItem> getDefaultNavItems();
}
