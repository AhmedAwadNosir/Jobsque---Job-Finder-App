import 'package:flutter/material.dart';
import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';
import '../../../Core/Utils/constans.dart';
import '../functions/text_field_border_decoration.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.focusNode,
      required this.isfocused,
      required this.hintText,
      required this.prefixicon,
      this.suffixicon,
      required this.obscureText});
  final FocusNode focusNode;
  final bool isfocused;
  final String hintText;
  final IconData prefixicon;
  IconData? suffixicon;
  bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      focusNode: widget.focusNode,
      style: AppFontsStyles.textstyle14.copyWith(
          fontFamily: textFamilyMedium,
          color: const Color(AppColors.appNeutralColors900)),
      decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefixicon,
            color: widget.isfocused
                ? const Color(AppColors.appNeutralColors900)
                : const Color(AppColors.appNeutralColors300),
          ),
          suffixIcon: widget.suffixicon != null
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  icon: Icon(
                    widget.obscureText
                        ? widget.suffixicon
                        : Icons.visibility_sharp,
                    color: widget.isfocused
                        ? const Color(AppColors.appNeutralColors900)
                        : const Color(AppColors.appNeutralColors300),
                  ))
              : null,
          hintText: widget.hintText,
          hintStyle: AppFontsStyles.textstyle14.copyWith(
            fontWeight: FontWeight.w400,
            height: 1.4,
            color: const Color(AppColors.appNeutralColors400),
          ),
          contentPadding: const EdgeInsets.all(25),
          enabledBorder:
              borderDecoration(borderColor: AppColors.appNeutralColors300),
          focusedBorder:
              borderDecoration(borderColor: AppColors.appPrimaryColors500)),
    );
  }
}
