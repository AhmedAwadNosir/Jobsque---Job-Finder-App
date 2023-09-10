import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_text_field_title.dart';

class CustomTextFieldSection extends StatelessWidget {
  const CustomTextFieldSection({
    super.key,
    required this.title,
    required this.prefixICon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmited,
    this.suffixIconOnTap,
    this.sympol,
    this.textInputType, this.controller,
  });
  final String title;
  final Widget prefixICon;
  final IconData? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmited;
  final void Function()? suffixIconOnTap;
  final String? sympol;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFieldTitle(
          title: title,
          symbol: sympol,
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: controller,
          onChanged: onChanged,
          onSubmitted: onSubmited,
          style: AppFontsStyles.textstyle14.copyWith(
              fontFamily: textFamilyMedium,
              color: AppColors.appNeutralColors900),
          keyboardType: textInputType,
          decoration: InputDecoration(
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              prefixIcon: prefixICon,
              suffixIcon: suffixIcon != null
                  ? GestureDetector(
                      onTap: suffixIconOnTap,
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
