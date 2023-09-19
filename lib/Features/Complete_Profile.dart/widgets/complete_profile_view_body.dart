import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/education_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/experience_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/personal_details_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/widgets/cusotm_mision.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/portfolio_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CompleteProfileViewBody extends StatelessWidget {
  const CompleteProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 33),
          Center(
            child: CircularPercentIndicator(
              radius: 59,
              lineWidth: 9,
              backgroundColor: AppColors.appNeutralColors200,
              percent: 0.5,
              progressColor: AppColors.appPrimaryColors500,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                "50%",
                style: AppFontsStyles.textstyle24.copyWith(
                  color: AppColors.appPrimaryColors500,
                  fontFamily: textFamilyMedium,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const CustomText16Style(
            title: "2/4 Completed",
            color: AppColors.appPrimaryColors500,
          ),
          const SizedBox(height: 8),
          const CustomText16Style(
            title: "Complete your profile before applying for a job",
            color: AppColors.appNeutralColors500,
            fontfamily: textFamilyRegular,
          ),
          const SizedBox(height: 34),
          CusotmMision(
            misionTitle: "Personal Details",
            mistionSubTitle: "Full name, email, phone number, and your address",
            isCompleted: true,
            diveder: true,
            destinaion: PersonalDetailsView.id,
          ),
          CusotmMision(
            misionTitle: "Education",
            mistionSubTitle:
                "Enter your educational history to be considered by the recruiter",
            isCompleted: true,
            diveder: true,
            destinaion: EducationView.id,
          ),
          CusotmMision(
            misionTitle: "Experience",
            mistionSubTitle:
                "Enter your work experience to be considered by the recruiter",
            isCompleted: false,
            diveder: true,
            destinaion: ExperienceView.id,
          ),
          CusotmMision(
            misionTitle: "Portfolio",
            mistionSubTitle:
                "Create your portfolio. Applying for various types of jobs is easier.",
            isCompleted: false,
            diveder: false,
            destinaion: PortFolioView.id,
          ),
        ],
      ),
    );
  }
}
