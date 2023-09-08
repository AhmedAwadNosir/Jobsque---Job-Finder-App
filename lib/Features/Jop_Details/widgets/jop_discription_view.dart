import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/text_orgaization.dart';

class JopDescriptionView extends StatelessWidget {
  const JopDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText14(title: "Job Description"),
          const SizedBox(height: 8),
          Text(
            "Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.",
            softWrap: true,
            style: AppFontsStyles.textstyle12.copyWith(
              color: AppColors.appNeutralColors600,
            ),
          ),
          const SizedBox(height: 20),
          const CustomText14(
            title: "Skill Required",
          ),
          const SizedBox(height: 8),
          const TextOraganization(
              skill:
                  "A strong visual portfolio with clear understanding of UI methodologies"),
          const TextOraganization(
              skill: "Ability to create hi-fidelity mock-ups in Figma"),
          const TextOraganization(
              skill:
                  "Ability to create various graphics for the web e.g. illustrations and icons"),
          const TextOraganization(
              skill:
                  "Able to facilitate workshops and liaise with stakeholders"),
          const TextOraganization(
              skill: "Proficiency in the Adobe Creative Suite"),
          const TextOraganization(
              skill: "Confident communicator with an analytical mindset"),
          const TextOraganization(
              skill: "Design library/Design system experience"),
          const TextOraganization(
              skill: "4+ years of commercial experience in UI/Visual Design"),
        ],
      ),
    );
  }
}
