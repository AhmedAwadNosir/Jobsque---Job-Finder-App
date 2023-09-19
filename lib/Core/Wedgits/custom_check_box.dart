import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({super.key, required this.isChecked});
  bool isChecked;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      width: 18,
      child: Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          value: widget.isChecked,
          checkColor: AppColors.appNeutralColors300,
          fillColor: MaterialStatePropertyAll(
              widget.isChecked ? AppColors.appPrimaryColors500 : Colors.white),
          onChanged: (newvalue) {
            setState(() {
              widget.isChecked = newvalue!;
            });
          }),
    );
  }
}
