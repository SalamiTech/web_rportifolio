import 'package:web_rportifolio/features/navigation/data/models/left_navigation.dart';
import 'package:web_rportifolio/features/navigation/data/repositories/inavigation.repository.dart';
import 'package:web_rportifolio/features/shell/presentation/pages/welcome/welcome.page.dart';
import 'package:web_rportifolio/styles/personal_portfolio_icons.dart';

class MockNavigationRepository implements INavigationRepository {
  @override
  List<LeftNavigationItem> getDefaultNavItems() {
    return [
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.user,
          label: 'My Profile',
          route: WelcomePage.route,
          isSelected: true),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.twitter,
          label: 'Twitter',
          route: '',
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.linkedin,
          label: 'LinkedIn',
          route: '',
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.web,
          label: 'Web',
          route: '',
          isSelected: false),
      LeftNavigationItem(
          icon: PersonalPortfolioIcons.github,
          label: 'Github',
          route: '',
          isSelected: false),
    ];
  }
}
