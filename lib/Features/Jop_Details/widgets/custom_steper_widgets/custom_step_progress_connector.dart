import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_steper_widgets/custom_dotted_divider.dart';

class CustomStepProgressConnector extends StatelessWidget {
  final bool isActiveConnector;
  final int connectorIndex;
  final Color? activeColor;
  final Color? disabledeColor;
  const CustomStepProgressConnector({
    super.key,
    required this.isActiveConnector,
    this.activeColor,
    this.disabledeColor,
    required this.connectorIndex,
  });

  @override
  Widget build(BuildContext context) {
    return DottedDivider(
      color: isActiveConnector
          ? activeColor ?? AppColors.appPrimaryColors500
          : disabledeColor ?? AppColors.appNeutralColors400,
    );
  }
}
