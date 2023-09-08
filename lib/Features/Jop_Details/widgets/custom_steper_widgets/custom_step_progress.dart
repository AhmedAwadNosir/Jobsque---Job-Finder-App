import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step_progress_connector.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_step_progress_icon_and_label.dart';


class CustomStepProgress extends StatefulWidget {
  final List<CustomStep> stepsList;
  final int currentIndex;
  final void Function(int) onStepTapped;
  const CustomStepProgress({
    Key? key,
    required this.stepsList,
    required this.currentIndex,
    required this.onStepTapped,
  }) : super(key: key);

  @override
  State<CustomStepProgress> createState() => _CustomStepProgressState();
}

class _CustomStepProgressState extends State<CustomStepProgress> {
  late int numbersOfStepsAndConnectors;

  @override
  void initState() {
    /// numbersOfConnectors = numbersOfSteps - 1
    /// numbersOfStepsAndConnectors = numbersOfSteps + numbersOfConnectors
    numbersOfStepsAndConnectors =
        widget.stepsList.length + (widget.stepsList.length - 1);

    super.initState();
  }

  bool _isFirst(int index) {
    return index == 0;
  }

  /// currentInex starts count form 0
  /// iconIndex starts count from 1
  /// so currentIndex == iconIndex - 1
  bool _isCurrentIcon(int iconIndex) {
    return widget.currentIndex == iconIndex - 1;
  }

  /// currentInex starts count form 0
  /// connectorIndex starts count from 1
  /// so currentIndex > connectorIndex - 1
  bool _isPreviousConnector(int connectorIndex) {
    return widget.currentIndex > connectorIndex - 1;
  }

  int _increamentIndex(int index) {
    return ++index;
  }

  /// stepIndex = iconIndex - 1
  int _stepIndex(int iconIndex) {
    if (iconIndex == 0) {
      return 0;
    } else {
      return iconIndex - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    int iconIndex = 0;
    int connectorIndex = 0;
    int stepIndex = 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        numbersOfStepsAndConnectors,
        (index) {
          if (_isFirst(index) || index.isEven) {
            iconIndex = _increamentIndex(iconIndex);
            stepIndex = _stepIndex(iconIndex);

            return CustomStepProgressIconAndLabel(
              onStepTapped: widget.onStepTapped,
              state: widget.stepsList[_stepIndex(iconIndex)].state,
              iconIndex: iconIndex,
              isActiveIcon: _isCurrentIcon(iconIndex),
              stepLable: widget.stepsList[stepIndex].label,
            );
          } else {
            connectorIndex = _increamentIndex(connectorIndex);
            return CustomStepProgressConnector(
              connectorIndex: connectorIndex,
              isActiveConnector: _isPreviousConnector(connectorIndex),
            );
          }
        },
      ),
    );
  }
}
