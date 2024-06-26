import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/characters/presentation/widgets/build_search_field.dart';

import 'build_bloc_widget.dart';
import 'characters_item.dart';

class BuildCharactersList extends StatelessWidget {
  const BuildCharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: searchTextController.text.isEmpty
          ? allCharacters.length
          : searchedForAllCharacters.length,
      itemBuilder: (context, index) {
        return CharactersItem(
          character: searchTextController.text.isEmpty
              ? allCharacters[index]
              : searchedForAllCharacters[index],
        );
      },
    );
  }
}
