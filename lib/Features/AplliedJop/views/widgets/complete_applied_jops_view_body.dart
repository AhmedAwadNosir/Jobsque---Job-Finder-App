import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/apply_custom_step_label.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step_progress_icon.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_stepper.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/step_1_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/step_2_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/step_3_content.dart';

class CompleteAppliedJopsBody extends StatefulWidget {
  const CompleteAppliedJopsBody({
    super.key,
    required this.jopData,
  });
  final AppliedJopModel jopData;

  @override
  State<CompleteAppliedJopsBody> createState() =>
      _CompleteAppliedJopsBodyState();
}

class _CompleteAppliedJopsBodyState extends State<CompleteAppliedJopsBody> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 48,
            width: 48,
            child: Image.asset(widget.jopData.comunicationToolIcon,
                fit: BoxFit.fill),
          ),
          const SizedBox(height: 12),
          CustomText20Style(title: widget.jopData.jopTitle),
          Text(
            widget.jopData.comunicationtoolname,
            style: AppFontsStyles.textstyle14
                .copyWith(color: AppColors.appNeutralColors700),
          ),
          Expanded(
              child: CustomStepper(
                  currentStep: currentIndex,
                  customSteps: getsteps(),
                  onStepTapped: (step) {
                    setState(() {
                      currentIndex = step;
                      if (_controller.hasClients) {
                        _controller.jumpToPage(currentIndex);
                      }
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      currentIndex++;
                      if (_controller.hasClients) {
                        _controller.jumpToPage(currentIndex);
                      }
                    });
                  },
                  pageController: _controller))
        ],
      ),
    );
  }

  List<CustomStep> getsteps() => [
        CustomStep(
          label: ApplyCustomStepsLabel(
            label: "Biodata",
            isActive: currentIndex >= 0,
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
            label: ApplyCustomStepsLabel(
              label: "Type of work",
              isActive: currentIndex >= 1,
            ),
            content: const Step2Content()),
        CustomStep(
            state: currentIndex > 2
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: currentIndex >= 2,
            label: ApplyCustomStepsLabel(
              label: "Uplode portfolio",
              isActive: currentIndex == 2,
            ),
            content: const Step3Content()),
      ];
}
