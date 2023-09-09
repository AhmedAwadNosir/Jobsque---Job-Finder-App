import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';

class CustomchatTextField extends StatelessWidget {
  const CustomchatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 227,
      child: TextField(
        onSubmitted: (value) {},
        decoration: InputDecoration(
            hintText: "Write a message...",
            hintStyle: AppFontsStyles.textstyle14
                .copyWith(color: AppColors.appNeutralColors400),
            disabledBorder: buildOutlineInputBorder(borderRadius: 100),
            enabledBorder: buildOutlineInputBorder(borderRadius: 100),
            focusedBorder: buildOutlineInputBorder(borderRadius: 100),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 11)),
      ),
    );
  }
}
