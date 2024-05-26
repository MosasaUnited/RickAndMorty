import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/features/characters/data/repo/characters_repo.dart';
import 'package:rick_and_morty/features/characters/data/services/characters_web_services.dart';
import 'package:rick_and_morty/features/characters/logic/cubit/characters_cubit.dart';

import '../widgets/build_bloc_widget.dart';

late CharactersRepo charactersRepo;
late CharactersCubit charactersCubit;

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    charactersRepo = CharactersRepo(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepo);
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => charactersCubit,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.myYellow,
          title: const Text(
            'Characters Screen',
            style: TextStyle(
              color: MyColors.myGrey,
            ),
          ),
        ),
        body: const BuildBlocWidget(),
      ),
    );
  }
}
