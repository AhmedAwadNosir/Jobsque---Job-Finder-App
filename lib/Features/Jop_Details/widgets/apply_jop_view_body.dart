import 'package:another_stepper/widgets/common/stepper_dot_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_barr.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/apply_section_title.dart';

class ApplyJopViewBody extends StatefulWidget {
  const ApplyJopViewBody({super.key});

  @override
  State<ApplyJopViewBody> createState() => _ApplyJopViewBodyState();
}

class _ApplyJopViewBodyState extends State<ApplyJopViewBody> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          const CustomBar(
            leftPart: Iconsax.arrow_left,
            centerPart: "Apply Job",
          ),
          const SizedBox(
            height: 34,
          ),
          Stepper(
            steps: getsteps(),
            
          )
        ],
      ),
    );
  }

  List<Step> getsteps() => [
        Step(
            title: const Text("Biodata"),
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  const ApplySectionTitle(
                    title: "Biodata",
                    subTitle: "Fill in your bio data correctly",
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: AppFontsStyles.textstyle16
                            .copyWith(color: AppColors.appNeutralColors900),
                      ),
                      Text(
                        "*",
                        style: AppFontsStyles.textstyle16
                            .copyWith(color: AppColors.appInDangerColors500),
                      )
                    ],
                  )
                ],
              ),
            ),
            isActive: currentStep >= 0),
        Step(
            title: const Text("Type of work"),
            content: Container(),
            isActive: currentStep >= 1),
        Step(
            title: const Text("Upload portfolio"),
            content: Container(),
            isActive: currentStep >= 2),
      ];
}
