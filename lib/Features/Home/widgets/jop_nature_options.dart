import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class JopNatureOptions extends StatelessWidget {
  const JopNatureOptions({
    super.key,
    required this.jopnature,
    required this.color,
    required this.textColor, this.height, this.width,
  });
  final String jopnature;
  final Color color;
  final Color textColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? 30,
      width:width?? 87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Center(
        child: Text(
          jopnature,
          style: AppFontsStyles.textstyle12.copyWith(color: textColor),
        ),
      ),
    );
  }
}
