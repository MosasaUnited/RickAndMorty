import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/show_loading_indicator.dart';

import '../../data/models/character_model.dart';
import '../../logic/cubit/characters_cubit.dart';
import 'build_loaded_list_widget.dart';

late List<CharacterModel> allCharacters;

class BuildBlocWidget extends StatefulWidget {
  const BuildBlocWidget({super.key});
  @override
  State<BuildBlocWidget> createState() => _BuildBlocWidgetState();
}

class _BuildBlocWidgetState extends State<BuildBlocWidget> {
  @override
  void initState() {
    super.initState();
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = (state).characters;
          return const BuildLoadedListWidget();
        } else {
          return const ShowLoadingIndicator();
        }
      },
    );
  }
}
