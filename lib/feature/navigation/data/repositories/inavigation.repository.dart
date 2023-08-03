import 'package:web_rportifolio/feature/navigation/data/models/left_navigation.dart';

abstract class INavigationRepository {
  List<LeftNavigationItem> getDefaultNavItems();
}
