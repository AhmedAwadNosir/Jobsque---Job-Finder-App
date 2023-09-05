import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/custom_Text.dart';

class CustomFilterTextField extends StatelessWidget {
  const CustomFilterTextField({
    super.key,
    required this.title,
    required this.prefixICon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmited, this.suffixIconOnTap,
  });
  final String title;
  final IconData prefixICon;
  final IconData? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmited;
  final void Function()? suffixIconOnTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(title: title),
        const SizedBox(
          height: 8,
        ),
        TextField(
          onChanged: onChanged,
          onSubmitted: onSubmited,
          style: AppFontsStyles.textstyle14.copyWith(
              fontFamily: textFamilyMedium,
              color: AppColors.appNeutralColors900),
          decoration: InputDecoration(
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              prefixIcon: Icon(
                prefixICon,
                color: AppColors.appNeutralColors800,
              ),
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                    onTap:suffixIconOnTap ,
                    child: Icon(
                        suffixIcon,
                        color: AppColors.appNeutralColors800,
                      ),
                  )
                  : null),
        )
      ],
    );
  }
}
