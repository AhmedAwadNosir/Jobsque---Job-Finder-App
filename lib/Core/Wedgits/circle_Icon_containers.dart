import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CircleIcons extends StatelessWidget {
  const CircleIcons({
    super.key,
    required this.icon,
    this.iconSize, this.onTap,
  });
  final IconData icon;
  final double? iconSize;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.appNeutralColors300),
          shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: GestureDetector(
          onTap: onTap,
          child:  Icon(icon,size: iconSize,),
        ),
      ),
    );
  }
}
