import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/lottie_assets.dart';

class ShowLoadingIndicator extends StatelessWidget {
  const ShowLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.asset(
      AppLottieAssets.loading,
      width: 200,
      height: 200,
      fit: BoxFit.cover,
      repeat: true,
      animate: true,
    ));
  }
}
