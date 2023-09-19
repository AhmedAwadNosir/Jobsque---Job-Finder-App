import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomTapPar extends StatelessWidget {
  const CustomTapPar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.appNeutralColors100),
      child: TabBar(
          dividerColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              color: AppColors.appPrimaryColors900,
              borderRadius: BorderRadius.circular(100)),
          labelColor: Colors.white,
          unselectedLabelColor: AppColors.appNeutralColors500,
          unselectedLabelStyle:
              AppFontsStyles.textstyle14.copyWith(fontFamily: textFamilyMedium),
          tabs: tabs),
    );
  }
}
