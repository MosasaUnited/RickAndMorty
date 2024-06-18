import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

import '../../../characters/data/models/character_model.dart';

class BuildSliverAppbar extends StatelessWidget {
  final CharacterModel character;

  const BuildSliverAppbar({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 500,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          character.name!,
          style: const TextStyle(
            color: MyColors.myOffWhite,
          ),
          textAlign: TextAlign.start,
        ),
        background: Hero(
          tag: character.id!,
          child: Image.network(
            character.image!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
