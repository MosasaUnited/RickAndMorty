import 'package:go_router/go_router.dart';

import '../../features/home/home_screen.dart';
import '../../features/home/presentation/screens/characters.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  static const kOnboarding = '/';
  static const kHome = '/home';
  static const kCharacters = '/characters';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kCharacters,
        builder: (context, state) => const CharactersScreen(),
      ),
    ],
  );
}
