import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/core/constants/lottie_assets.dart';
import 'package:rick_and_morty/features/characters/data/models/character_model.dart';

class CharactersItem extends StatelessWidget {
  final CharacterModel characterModel;

  const CharactersItem({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myOffWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black87,
          alignment: Alignment.bottomCenter,
          child: Text(
            characterModel.name,
            style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              color: MyColors.myOffWhite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Container(
          color: MyColors.myGrey,
          child: characterModel.image.isNotEmpty
              ? Lottie.asset(
                  AppLottieAssets.loading,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                )
              : Lottie.asset(
                  AppLottieAssets.error,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
