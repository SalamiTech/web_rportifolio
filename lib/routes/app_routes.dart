import 'package:go_router/go_router.dart';
import 'package:web_rportifolio/feature/splash/splash.dart';
import 'package:web_rportifolio/helpers/utils.dart';

import '../feature/github/presentation/pages/github.page.dart';
import '../feature/linkedin/presentation/pages/linkedin.page.dart';
import '../feature/shell/presentation/pages/portfoliomain.page.dart';
import '../feature/welcome/presentation/pages/welcome.page.dart';
import '../feature/twitter/presentation/pages/twitter.page.dart';
import '../feature/web/presentation/pages/web.page.dart';

class AppRoutes {
  static final router = GoRouter(
      initialLocation: SplashPage.route,
      navigatorKey: Utils.mainNav,
      routes: [
        GoRoute(
          parentNavigatorKey: Utils.mainNav,
          path: SplashPage.route,
          builder: (context, state) => const SplashPage(),
        ),
        ShellRoute(
            navigatorKey: Utils.tabNav,
            builder: (context, state, child) {
              return PortfolioMainPage(child: child);
            },
            routes: [
              GoRoute(
                  parentNavigatorKey: Utils.tabNav,
                  path: WelcomePage.route,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: WelcomePage());
                  }),
              GoRoute(
                  parentNavigatorKey: Utils.tabNav,
                  path: TwitterPage.route,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: TwitterPage());
                  }),
              GoRoute(
                  parentNavigatorKey: Utils.tabNav,
                  path: LinkedInPage.route,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: LinkedInPage());
                  }),
              GoRoute(
                  parentNavigatorKey: Utils.tabNav,
                  path: GithubPage.route,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: GithubPage());
                  }),
              GoRoute(
                  parentNavigatorKey: Utils.tabNav,
                  path: WebPage.route,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: WebPage());
                  }),
            ]),
      ]);
}
