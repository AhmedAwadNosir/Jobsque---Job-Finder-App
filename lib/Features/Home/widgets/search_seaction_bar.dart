import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class SearchSectionBar extends StatelessWidget {
  const SearchSectionBar({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appNeutralColors200,
      height: 36,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 24),
      child: Text(
       text,
        style: AppFontsStyles.textstyle14.copyWith(
            fontFamily: textFamilyMedium, color: AppColors.appNeutralColors500),
      ),
    );
  }
}
