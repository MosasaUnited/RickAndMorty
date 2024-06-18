import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/core/constants/lottie_assets.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: MyColors.myOffWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Can\'t connect to the internet',
              style: TextStyle(
                color: MyColors.myGrey,
                fontSize: 22.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Lottie.asset(
              AppLottieAssets.error,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
