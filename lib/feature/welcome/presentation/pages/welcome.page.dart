import 'package:flutter/material.dart';

import '../../../../styles/colors.dart';
import '../../../../styles/personal_portfolio_icons.dart';

class WelcomePage extends StatelessWidget {
  static const String route = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: PersonalPortfolioColors.welcomePrimary,
                            width: 8),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/92346444?v=4'),
                            fit: BoxFit.cover))),
                const SizedBox(width: 40),
                const Icon(PersonalPortfolioIcons.wave,
                    size: 90, color: PersonalPortfolioColors.welcomeIcon)
              ]),
          const Text(
            "Hello",
            style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const Text.rich(
            TextSpan(
                style: TextStyle(fontSize: 100, color: Colors.white),
                children: [
                  TextSpan(text: "I'm "),
                  TextSpan(
                      text: 'Salami',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
            textAlign: TextAlign.center,
          ),
          Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(PersonalPortfolioIcons.badge,
                    color: PersonalPortfolioColors.welcomePrimary, size: 80),
                const SizedBox(width: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Software Engineer',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                    Text('Flutter Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                  ],
                )
              ])
        ]));
  }
}
