import 'package:go_router/go_router.dart';
import 'package:web_rportifolio/features/presentation/pages/splash/splash.dart';
import 'package:web_rportifolio/helpers/utils.dart';

import '../features/presentation/pages/shell/portfoliomain.page.dart';
import '../features/presentation/pages/welcome/welcome.page.dart';

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
            builder: ((context, state, child) {
              return PortfolioMainPage(child: child);
            }),
            routes: [
              GoRoute(
                  parentNavigatorKey: Utils.tabNav,
                  path: WelcomePage.route,
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: WelcomePage());
                  }),
            ])
      ]);
}
