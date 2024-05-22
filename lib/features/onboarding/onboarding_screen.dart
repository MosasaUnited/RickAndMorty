import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../core/constants/lottie_assets.dart';
import '../../core/routing/app_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Column(
        children: [
          Lottie.asset(AppLottieAssets.onBoardingAnimated,
              width: 300.w, height: 300.h, fit: BoxFit.cover,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dive Deep into the wacky world of',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                          text: ' Rick And Morty',
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w900,
                              color: Colors.deepPurple)),
                      TextSpan(
                        text:
                            '  with character bios, episode guides, and behind-the-scenes secrets',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kCharacters);
            },
            child: Text(
              'Get Started',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20.sp,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
