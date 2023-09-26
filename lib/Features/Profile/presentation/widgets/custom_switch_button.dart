import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CustomSwitchButton extends StatefulWidget {
  const CustomSwitchButton({super.key});

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isActive,
      activeColor: AppColors.appPrimaryColors100,
      inactiveThumbColor: AppColors.appNeutralColors100,
      activeTrackColor: AppColors.appPrimaryColors500,
      inactiveTrackColor: AppColors.appNeutralColors300,
      trackOutlineWidth: const MaterialStatePropertyAll(0),
      trackOutlineColor:
          const MaterialStatePropertyAll(AppColors.appNeutralColors300),
      onChanged: (value) {
        setState(() {
          isActive = value;
        });
      },
    );
  }
}
