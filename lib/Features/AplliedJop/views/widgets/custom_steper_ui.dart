import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step_progress.dart';

class CustomStepperUi extends StatelessWidget {
  final List<CustomStep> customSteps;
  final int currentStep;
  final void Function(int) onStepTapped;
  final void Function() onStepContinue;

  final PageController pageController;
  const CustomStepperUi({
    super.key,
    required this.customSteps,
    required this.onStepTapped,
    this.currentStep = 0,
    required this.onStepContinue,
    required this.pageController,
  }) : assert(0 <= currentStep && currentStep < customSteps.length);

  bool _isLastStep() {
    return currentStep == customSteps.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 18),
        CustomStepProgress(
          onStepTapped: onStepTapped,
          currentIndex: currentStep,
          stepsList: customSteps,
        ),

        // const VerticalSpace(space: 20),
      ],
    );
  }
}
