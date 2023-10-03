import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/complete_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';

class CompleteYourDataInstraction extends StatelessWidget {
  const CompleteYourDataInstraction({
    super.key,
    required this.title,
    required this.subTitle,
    this.hieghtSpace,
  });
  final String title;
  final String subTitle;
  final double? hieghtSpace;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: hieghtSpace ?? 121),
          CustomStatepage(
            stateImage: AppImages.savedICon,
            statetitle: title,
            stateSubtitle: subTitle,
            subTitleStyle: AppFontsStyles.textstyle18
                .copyWith(color: AppColors.appInDangerColors500),
          ),
          const SizedBox(height: 25),
          CustomButton(
              buttonColor: AppColors.appInDangerColors500,
              onPressed: () {
                Navigator.pushNamed(context, CompleteProfileView.id);
              },
              buttonName: "Complete Your Data"),
        ],
      ),
    );
  }
}
