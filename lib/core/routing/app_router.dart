import 'package:go_router/go_router.dart';

import '../../features/characters/presentation/screens/characters.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  static const kOnboarding = '/';
  static const kCharacters = '/characters';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kCharacters,
        builder: (context, state) => CharactersScreen(),
      ),
    ],
  );
}
