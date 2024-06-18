import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/characters/data/models/character_model.dart';

import '../../features/characters/presentation/screens/characters.dart';
import '../../features/characters_details/presentation/screens/character_details_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  static const kOnboarding = '/';
  static const kCharacters = '/characters';
  static const kCharactersDetails = '/charactersDetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnboarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kCharacters,
        builder: (context, state) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const CharactersScreen()),
      ),
      GoRoute(
        path: kCharactersDetails,
        name: 'charactersDetails',
        builder: (context, state) => CharacterDetailsScreen(
          character: state.extra as CharacterModel,
        ),
      ),
    ],
  );
}
