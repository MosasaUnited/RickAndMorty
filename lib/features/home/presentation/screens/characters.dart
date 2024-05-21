import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/features/home/presentation/widgets/build_bloc_widget.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
