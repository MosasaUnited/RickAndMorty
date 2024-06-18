import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/features/characters/data/models/character_model.dart';

import '../widgets/build_sliver_appbar.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          BuildSliverAppbar(
            character: character,
          ), // SliverList(delegate: delegate)
        ],
      ),
    );
  }
}
