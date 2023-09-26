import 'package:flutter/material.dart';
import 'custom_step_progress_icon.dart';

class CustomStepProgressIconAndLabel extends StatelessWidget {
  final bool isActiveIcon;
  final int iconIndex;
  final Widget? stepLable;
  final CustomStepState? state;
  final ValueChanged<int> onStepTapped;
  const CustomStepProgressIconAndLabel(
      {super.key,
      required this.iconIndex,
      required this.isActiveIcon,
      this.stepLable,
      required this.state,
      required this.onStepTapped});

  /// because stepIndex start count from 0
  /// and iconIndex start count from 1
  /// this is because I need to show the index of Icon
  int _getStepIndex() {
    return iconIndex - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 91, minHeight: 70),
      child: GestureDetector(
        onTap: () => onStepTapped.call(_getStepIndex()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomStepProgressIcon(
              isActiveIcon: isActiveIcon,
              iconIndex: iconIndex,
              state: state ?? CustomStepState.indexed,
            ),
             const SizedBox(height: 8),
            stepLable ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
