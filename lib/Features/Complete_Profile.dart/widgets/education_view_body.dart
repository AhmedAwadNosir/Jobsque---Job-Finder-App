import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/widgets/custom_data_section.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class EducationViewBody extends StatelessWidget {
  const EducationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.appNeutralColors300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 16),
                child: Column(
                  children: [
                    CustomTextFieldSection(
                      title: "University *",
                      titleColor: AppColors.appNeutralColors400,
                      titleSpace: 6,
                      onSubmited: (value) {},
                      onChanged: (value) {},
                      content: "Northern Michigan University",
                      contentStyle: AppFontsStyles.textstyle16.copyWith(
                          fontFamily: textFamilyMedium,
                          color: AppColors.appNeutralColors800),
                    ),
                    const SizedBox(height: 16),
                    CustomTextFieldSection(
                      title: "Title",
                      titleColor: AppColors.appNeutralColors400,
                      titleSpace: 6,
                      onSubmited: (value) {},
                      onChanged: (value) {},
                      content: "Bachelor",
                      contentStyle: AppFontsStyles.textstyle16.copyWith(
                          fontFamily: textFamilyMedium,
                          color: AppColors.appNeutralColors800),
                    ),
                    const SizedBox(height: 16),
                    CustomTextFieldSection(
                      title: "Start Year",
                      titleColor: AppColors.appNeutralColors400,
                      titleSpace: 6,
                      onSubmited: (value) {},
                      onChanged: (value) {},
                      content: "December 2019",
                      contentStyle: AppFontsStyles.textstyle16.copyWith(
                          fontFamily: textFamilyMedium,
                          color: AppColors.appNeutralColors800),
                      suffixIcon: Iconsax.calendar_1,
                      suffixIconOnTap: () {},
                    ),
                    const SizedBox(height: 16),
                    CustomTextFieldSection(
                      title: "End Year",
                      titleColor: AppColors.appNeutralColors400,
                      titleSpace: 6,
                      onSubmited: (value) {},
                      onChanged: (value) {},
                      content: "December 2022",
                      contentStyle: AppFontsStyles.textstyle16.copyWith(
                          fontFamily: textFamilyMedium,
                          color: AppColors.appNeutralColors800),
                      suffixIcon: Iconsax.calendar_1,
                      suffixIconOnTap: () {},
                    ),
                    const SizedBox(height: 32),
                    CustomButton(onPressed: () {}, buttonName: "Save")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            CustomDataSection(
              dataImage: AppImages.universityLogo,
              title: "The University of Arizona",
              subTitle: "Bachelor of Art and Design",
              time: "2012 - 2015",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
