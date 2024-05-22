import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

import '../../data/repo/characters_repo.dart';
import '../../data/services/characters_web_services.dart';
import '../../logic/cubit/characters_cubit.dart';
import '../widgets/build_bloc_widget.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late final CharactersRepo charactersRepo;
  late final CharactersCubit charactersCubit;

  @override
  void initState() {
    charactersRepo = CharactersRepo(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => charactersCubit,
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
