import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/custom_toggle_button_child.dart';
import 'custom_toggle_button.dart';

class WorkLocationToggleButton extends StatefulWidget {
  const WorkLocationToggleButton({super.key});
  static String worknature = "Work From Office";
  @override
  State<WorkLocationToggleButton> createState() =>
      _WorkLocationToggleButtonState();
}

class _WorkLocationToggleButtonState extends State<WorkLocationToggleButton> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return CustomToggleButton(
      isSelected: isSelected,
      childern: [
        CustomToggleButtonChild(
            workNature: "Work From Office", isSelected: isSelected[0]),
        CustomToggleButtonChild(
            workNature: "Remote Work", isSelected: isSelected[1])
      ],
      onPressed: (index) {
        setState(() {
          for (var i = 0; i < isSelected.length; i++) {
            if (i == index) {
              isSelected[i] = true;
            } else {
              isSelected[i] = false;
            }
            if (isSelected[1] == true) {
              WorkLocationToggleButton.worknature = "Remote Work";
            }
          }
        });
      },
    );
  }
}
