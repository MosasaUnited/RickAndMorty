import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/features/characters/data/repo/characters_repo.dart';
import 'package:rick_and_morty/features/characters/data/services/characters_web_services.dart';
import 'package:rick_and_morty/features/characters/logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/build_appbar_title.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/build_search_field.dart';

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
          leading: isSearching
              ? const BackButton(
                  color: MyColors.myGrey,
                )
              : Container(),
          backgroundColor: MyColors.myYellow,
          title:
              isSearching ? const BuildSearchField() : const BuildAppbarTitle(),
          actions: buildAppBarActions(),
        ),
        body: const BuildBlocWidget(),
      ),
    );
  }

  List<Widget> buildAppBarActions() {
    if (isSearching) {
      return [
        IconButton(
          onPressed: () {
            clearSearch();
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.clear,
            color: MyColors.myGrey,
          ),
        ),
      ];
    } else {
      return [
        IconButton(
            onPressed: startSearch,
            icon: const Icon(
              Icons.search,
              color: MyColors.myGrey,
            ))
      ];
    }
  }

  void clearSearch() {
    setState(() {
      searchTextController.clear();
    });
  }

  void startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearching));

    setState(() {
      isSearching = true;
    });
  }

  void stopSearching() {
    clearSearch();

    setState(() {
      isSearching = false;
    });
  }
}
