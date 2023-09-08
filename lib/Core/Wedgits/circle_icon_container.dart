import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_style.dart';

class CircleIconContainer extends StatelessWidget {
  const CircleIconContainer({
    super.key,
    required this.icon,
    required this.iconSize,
  });
  final IconData icon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleIconStyle(
      icon: Icon(
        icon,
        size: iconSize,
        color: AppColors.appPrimaryColors500,
      ),
    );
  }
}
