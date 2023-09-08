import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step_progress_icon.dart';

class CustomStep extends StatelessWidget {
  final Widget content;
  final bool? isActive;
  final CustomStepState? state;
  final Widget? label;
  const CustomStep({
    super.key,
    required this.content,
    this.isActive,
    this.state = CustomStepState.indexed,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return content;
  }
}
