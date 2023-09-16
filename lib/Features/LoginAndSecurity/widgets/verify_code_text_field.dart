import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class VerifyCodeTextField extends StatelessWidget {
  VerifyCodeTextField({
    super.key,
    this.controller,
    required this.isFirst,
    required this.isLast,
  });
  bool isFirst;
  bool isLast;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.appNeutralColors300),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        onChanged: (value) {
          if (value.isNotEmpty && isLast == false) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && isFirst == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style:
            AppFontsStyles.textstyle14.copyWith(color: const Color(0xff222741)),
        decoration: const InputDecoration(
            border: InputBorder.none,
            constraints: BoxConstraints(
              maxHeight: 44,
              maxWidth: 44,
            )),
      ),
    );
  }
}