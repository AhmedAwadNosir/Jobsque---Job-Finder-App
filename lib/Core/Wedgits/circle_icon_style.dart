import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CircleIconStyle extends StatelessWidget {
  const CircleIconStyle({
    super.key,
    this.containerColor,
    required this.icon,
  });
  final Color? containerColor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: containerColor ?? AppColors.appPrimaryColors100,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
