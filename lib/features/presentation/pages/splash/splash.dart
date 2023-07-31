import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_rportifolio/features/presentation/pages/shell/portfoliomain.page.dart';
import 'package:web_rportifolio/features/presentation/pages/welcome/welcome.page.dart';
import 'package:web_rportifolio/features/presentation/widgets/splash_loading.dart';
import 'package:web_rportifolio/helpers/utils.dart';
import 'package:web_rportifolio/styles/colors.dart';

class SplashPage extends StatelessWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(Utils.mainNav.currentContext!).go(WelcomePage.route);
    });

    return const Scaffold(
      backgroundColor: PersonalPortfolioColors.mainBlue,
      body: SplashLoading(
        message: 'Loading an awesome,\nKick-ass Profile...',
      ),
    );
  }
}
