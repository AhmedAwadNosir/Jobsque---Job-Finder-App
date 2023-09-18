import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class DropDownText extends StatefulWidget {
  const DropDownText({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  State<DropDownText> createState() => _DropDownTextState();
}

class _DropDownTextState extends State<DropDownText> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.appNeutralColors300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText16Style(title: widget.title),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Icon(
                    isExpanded == true
                        ? Iconsax.arrow_up_2
                        : Iconsax.arrow_down_1,
                    color: AppColors.appNeutralColors400,
                    size: 20,
                  ),
                )
              ],
            ),
            isExpanded != false
                ? Column(
                    children: [
                      const SizedBox(height: 16),
                      CustomText14(
                        title: widget.content,
                        titleColor: AppColors.appNeutralColors500,
                        fontFamily: textFamilyRegular,
                      )
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}