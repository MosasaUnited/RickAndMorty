import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class BuildAppbarTitle extends StatelessWidget {
  const BuildAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Characters',
      style: TextStyle(
        color: MyColors.myGrey,
      ),
    );
  }
}
