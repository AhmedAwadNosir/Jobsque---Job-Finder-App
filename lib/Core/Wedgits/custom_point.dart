import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CustomPoint extends StatelessWidget {
  const CustomPoint({
    super.key,
    this.pointColor, this.hieght, this.width,
  });
  final Color? pointColor;
  final double? hieght;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:hieght?? 4,
      width:width?? 4,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: pointColor ?? AppColors.appNeutralColors600),
    );
  }
}
