import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/core/constants/lottie_assets.dart';
import 'package:rick_and_morty/features/characters/data/models/character_model.dart';

class CharactersItem extends StatelessWidget {
  final CharacterModel character;

  const CharactersItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(10.sp, 10.sp, 10.sp, 10.sp),
      padding: EdgeInsetsDirectional.all(4.sp),
      decoration: BoxDecoration(
        color: MyColors.myOffWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        child: GridTile(
          footer: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black87,
            alignment: Alignment.bottomCenter,
            child: Text(
              character.name!,
              style: TextStyle(
                height: 1.3.h,
                fontSize: 16.sp,
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
            child: character.image!.isEmpty
                ? Lottie.asset(
                    AppLottieAssets.loading,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    character.image!,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}
