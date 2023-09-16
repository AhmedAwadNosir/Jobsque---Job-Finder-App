import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/custom_switch_button.dart';

class CustomSecurityOption extends StatelessWidget {
  const CustomSecurityOption({
    super.key,
    required this.optionName,
    this.textStyle, required this.textWidth,
  });
  final String optionName;
  final TextStyle? textStyle;
  final double textWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width *textWidth,
          child: Text(optionName,
              style: textStyle ??
                  AppFontsStyles.textstyle14
                      .copyWith(color: AppColors.appNeutralColors500)),
        ),
        const CustomSwitchButton()
      ],
    );
  }
}
