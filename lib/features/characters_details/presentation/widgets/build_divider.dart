import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/core/constants/colors.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({super.key, required this.endIndent});

  final double endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30.h,
      endIndent: endIndent,
      color: MyColors.myYellow,
      thickness: 2,
    );
  }
}
