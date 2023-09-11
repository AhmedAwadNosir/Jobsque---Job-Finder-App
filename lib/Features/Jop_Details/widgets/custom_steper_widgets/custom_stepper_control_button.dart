import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/views/jop_applied_succesfuly.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class CustomStepperControlButton extends StatelessWidget {
  final void Function() onStepControl;
  final bool isLastStep;

  const CustomStepperControlButton({
    super.key,
    required this.onStepControl,
    required this.isLastStep,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        onPressed: isLastStep
            ? () {
                Navigator.pushNamed(context, JopAppliedSuccesfuly.id);
              }
            : onStepControl,
        buttonName: isLastStep ? 'Submit' : 'Next',
      ),
    );
  }
}
