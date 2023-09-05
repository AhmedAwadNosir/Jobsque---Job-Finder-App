import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_type_container.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';

class CustomFiltringBottomShee extends StatelessWidget {
  const CustomFiltringBottomShee({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          Center(child: Image.asset(AppImages.vector)),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "On-Site/Remote",
              style: AppFontsStyles.textstyle18.copyWith(
                  fontFamily: textFamilyMedium,
                  color: AppColors.appNeutralColors900),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Wrap(
            children: [
              JopContainer(
                title: "Remote",
                padding: EdgeInsets.only(right: 8, bottom: 16),
              ),
              JopContainer(
                title: "Onsite",
                padding: EdgeInsets.only(right: 8, bottom: 16),
              ),
              JopContainer(
                title: "Hyprid",
                padding: EdgeInsets.only(right: 8, bottom: 16),
              ),
              JopContainer(
                title: "Any",
                padding: EdgeInsets.only(right: 0, bottom: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
              child: CustomButton(onPressed: () {}, buttonName: "Show Result")),
          const SizedBox(
            height: 9,
          ),
        ],
      ),
    );
  }
}
