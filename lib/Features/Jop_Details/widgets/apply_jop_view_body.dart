import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_barr.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/step_1_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/step_2_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step_progress_icon.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_stepper.dart';

import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/step_3_content.dart';

class ApplyJopViewBody extends StatefulWidget {
  const ApplyJopViewBody({super.key});

  @override
  State<ApplyJopViewBody> createState() => _ApplyJopViewBodyState();
}

class _ApplyJopViewBodyState extends State<ApplyJopViewBody> {
  int currentIndex = 0;
  late PageController controler;
  @override
  void initState() {
    controler = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

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
          Expanded(
              child: CustomStepper(
                  currentStep: currentIndex,
                  customSteps: getsteps(),
                  onStepTapped: (step) {
                    setState(() {
                      currentIndex = step;
                      if (controler.hasClients) {
                        controler.jumpToPage(currentIndex);
                      }
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      currentIndex++;
                      if (controler.hasClients) {
                        controler.jumpToPage(currentIndex);
                      }
                    });
                  },
                  pageController: controler))
        ],
      ),
    );
  }

  List<CustomStep> getsteps() => [
        CustomStep(
          label: Text(
            "Biodata",
            style: AppFontsStyles.textstyle12
                .copyWith(color: AppColors.appNeutralColors900),
          ),
          isActive: currentIndex >= 0,
          state: currentIndex > 0
              ? CustomStepState.complete
              : CustomStepState.indexed,
          content: const Step1Content(),
        ),
        CustomStep(
            state: currentIndex > 1
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: currentIndex >= 1,
            label: const Text("Type of work"),
            content: const Step2Content()),
        CustomStep(
            state: currentIndex > 2
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: currentIndex >= 2,
            label: const Text("Uplode portfolio"),
            content: const Step3Content()),
      ];
}
