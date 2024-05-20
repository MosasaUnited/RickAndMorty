import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/features/home/data/repo/characters_repo.dart';
import 'package:rick_and_morty/features/home/logic/cubit/characters_cubit.dart';

import '../../features/home/data/services/characters_web_services.dart';
import '../../features/home/home_screen.dart';
import '../../features/home/presentation/screens/characters.dart';
import '../../features/onboarding/onboarding_screen.dart';

late CharactersRepo charactersRepo;
late CharactersCubit charactersCubit;

abstract class AppRouter {
  static const kOnboarding = '/';
  static const kHome = '/home';
  static const kCharacters = '/characters';

  static void initAppRouter() {
    charactersRepo = CharactersRepo(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepo);
  }

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
        builder: (context, state) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const CharactersScreen()),
      ),
    ],
  );
}
