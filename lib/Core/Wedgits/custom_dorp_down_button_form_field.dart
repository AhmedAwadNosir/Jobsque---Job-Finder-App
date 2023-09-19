import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';

class CustomDorpDownButtonFormField extends StatefulWidget {
  const CustomDorpDownButtonFormField({
    super.key,
    required this.title,
    required this.itemsList,
    required this.initialValue,
    this.prefixIcon,
    this.titleColor,
    this.style,
  });
  final String title;
  final List<String> itemsList;
  final String initialValue;
  final IconData? prefixIcon;
  final Color? titleColor;
  final TextStyle? style;
  @override
  State<CustomDorpDownButtonFormField> createState() =>
      _CustomDorpDownButtonFormFieldState();
}

class _CustomDorpDownButtonFormFieldState
    extends State<CustomDorpDownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    String content = widget.initialValue;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText16Style(
          title: widget.title,
          color: widget.titleColor,
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField(
          style: widget.style ??
              AppFontsStyles.textstyle14.copyWith(
                  color: AppColors.appNeutralColors900,
                  fontFamily: textFamilyMedium),
          items: widget.itemsList
              .map(
                (value) => DropdownMenuItem(
                  value: value,
                  child: CustomText14(title: value),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              content = value.toString();
            });
          },
          value: content,
          icon: const Icon(
            Iconsax.arrow_down_1,
            size: 20,
            color: AppColors.appNeutralColors900,
          ),
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    size: 20,
                  )
                : null,
            border: buildOutlineInputBorder(),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
          ),
          isExpanded: true,
        )
      ],
    );
  }
}
