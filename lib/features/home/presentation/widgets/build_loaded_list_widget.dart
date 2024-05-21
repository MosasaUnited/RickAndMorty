import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/home/presentation/widgets/build_characters_list.dart';

import '../../../../core/constants/colors.dart';

class BuildLoadedListWidget extends StatelessWidget {
  const BuildLoadedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: MyColors.myGrey,
        child: const Column(
          children: [
            BuildCharactersList(),
          ],
        ),
      ),
    );
  }
}
