import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_text_field_title.dart';

class CustomPasswordTextFieldSection extends StatefulWidget {
  const CustomPasswordTextFieldSection({
    super.key,
    required this.title,
    this.prefixICon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmited,
    this.sympol,
    this.titleColor,
    this.titleSpace,
    this.controller,
  });
  final String title;
  final Widget? prefixICon;
  final IconData? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmited;
  final String? sympol;
  final TextEditingController? controller;
  final Color? titleColor;
  final double? titleSpace;

  @override
  State<CustomPasswordTextFieldSection> createState() =>
      _CustomPasswordTextFieldSectionState();
}

class _CustomPasswordTextFieldSectionState
    extends State<CustomPasswordTextFieldSection> {
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFieldTitle(
          title: widget.title,
          symbol: widget.sympol,
          titleColor: widget.titleColor,
        ),
        SizedBox(
          height: widget.titleSpace ?? 8,
        ),
        TextFormField(
          obscureText: obsecureText,
          controller: widget.controller,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmited,
          style: AppFontsStyles.textstyle14.copyWith(
              fontFamily: textFamilyMedium,
              color: AppColors.appNeutralColors900),
          decoration: InputDecoration(
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              prefixIcon: widget.prefixICon,
              suffixIcon: widget.suffixIcon != null
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      child: Icon(
                        obsecureText ? widget.suffixIcon : Iconsax.eye,
                        size: 20,
                        color: AppColors.appNeutralColors400,
                      ),
                    )
                  : null),
        )
      ],
    );
  }
}
