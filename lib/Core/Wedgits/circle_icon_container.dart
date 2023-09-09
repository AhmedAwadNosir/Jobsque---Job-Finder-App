import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_style.dart';

class CircleIconContainer extends StatelessWidget {
  const CircleIconContainer({
    super.key,
    required this.icon,
     this.iconSize, this.iconColor, this.containerColor,
  });
  final IconData icon;
  final double? iconSize;
  final Color? iconColor;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return CircleIconStyle(
      containerColor: containerColor,
      icon: Icon(
        icon,
        size: iconSize,
        color:iconColor?? AppColors.appPrimaryColors500,
      ),
    );
  }
}
