import 'package:flutter/material.dart';

import 'custom_step.dart';

class CustomStepperStepContent extends StatelessWidget {
  const CustomStepperStepContent({
    super.key,
    required this.customSteps,
    required this.currentStep,
    required this.pageController,
  });

  final List<CustomStep> customSteps;
  final int currentStep;

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: customSteps.map((step) {
          return step.content;
        }).toList(),
      ),
    );
  }
}
