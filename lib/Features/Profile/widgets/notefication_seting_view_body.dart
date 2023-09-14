import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/notefication_section.dart';

class NoteficationSetingViewBody extends StatefulWidget {
  const NoteficationSetingViewBody({super.key});

  @override
  State<NoteficationSetingViewBody> createState() =>
      _NoteficationSetingViewBodyState();
}

class _NoteficationSetingViewBodyState
    extends State<NoteficationSetingViewBody> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomSectionBar(
            text: "Job notification",
            textStyle: AppFontsStyles.textstyle16.copyWith(
                fontFamily: textFamilyMedium,
                color: AppColors.appNeutralColors500),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child:
                NoteficationSection(noteficaionName: "Your Job Search Alert"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child:
                NoteficationSection(noteficaionName: "Job Application Update"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NoteficationSection(
                noteficaionName: "Job Application Reminders"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NoteficationSection(
                noteficaionName: "Jobs You May Be Interested In"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NoteficationSection(noteficaionName: "Job Seeker Updates"),
          ),
          const SizedBox(height: 32),
          CustomSectionBar(
            text: "Other notification",
            textStyle: AppFontsStyles.textstyle16.copyWith(
                fontFamily: textFamilyMedium,
                color: AppColors.appNeutralColors500),
          ),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NoteficationSection(noteficaionName: "Show Profile"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NoteficationSection(noteficaionName: "All Message"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: NoteficationSection(noteficaionName: "Message Nudges"),
          ),
          const SizedBox(height: 39),
        ],
      ),
    );
  }
}
