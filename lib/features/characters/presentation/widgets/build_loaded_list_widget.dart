import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import 'build_characters_list.dart';

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
