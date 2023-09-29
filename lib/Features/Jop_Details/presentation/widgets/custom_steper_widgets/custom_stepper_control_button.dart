import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';

class CustomStepperControlButton extends StatelessWidget {
  final void Function() onStepControl;
  final void Function() lastStepControl;
  final bool isLastStep;

  const CustomStepperControlButton({
    super.key,
    required this.onStepControl,
    required this.isLastStep,
    required this.lastStepControl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: isLastStep ? lastStepControl : onStepControl,
        buttonName: isLastStep ? 'Submit' : 'Next',
      ),
    );
  }
}
