import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CustomPoint extends StatelessWidget {
  const CustomPoint({
    super.key, this.pointColor,
  });
  final Color? pointColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration:  BoxDecoration(
          shape: BoxShape.circle, color:pointColor?? AppColors.appNeutralColors600),
    );
  }
}
