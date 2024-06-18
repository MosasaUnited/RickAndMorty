import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/features/characters/data/models/character_model.dart';

import '../widgets/build_divider.dart';
import '../widgets/build_sliver_appbar.dart';
import '../widgets/character_info.dart';

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
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CharacterInfo(
                        title: 'Species : ',
                        value: character.species!,
                      ),
                      const BuildDivider(
                        endIndent: 250,
                      ),
                      CharacterInfo(
                        title: 'Status : ',
                        value: character.status!,
                      ),
                      const BuildDivider(
                        endIndent: 260,
                      ),
                      CharacterInfo(
                        title: 'Origin : ',
                        value: character.origin!.name!,
                      ),
                      const BuildDivider(
                        endIndent: 260,
                      ),
                      CharacterInfo(
                        title: 'Gender : ',
                        value: character.gender!,
                      ),
                      const BuildDivider(
                        endIndent: 250,
                      ),
                      CharacterInfo(
                        title: 'Episodes : ',
                        value: character.episode!.length.toString(),
                      ),
                      const BuildDivider(
                        endIndent: 240,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500.h,
                ),
              ],
            ),
          ), // SliverList(delegate: delegate)
        ],
      ),
    );
  }
}
