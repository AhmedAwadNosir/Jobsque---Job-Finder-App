import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class CustomDataSection extends StatelessWidget {
  const CustomDataSection({
    super.key,
    required this.dataImage,
    required this.title,
    required this.subTitle,
    required this.time,
    this.onTap,
  });
  final String dataImage;
  final String title;
  final String subTitle;
  final String time;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.appNeutralColors300),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Row(
          children: [
            Image.asset(dataImage),
            const SizedBox(width: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText16Style(title: title),
                    Text(
                      subTitle,
                      style: AppFontsStyles.textstyle14
                          .copyWith(color: AppColors.appNeutralColors500),
                    ),
                    Text(
                      time,
                      style: AppFontsStyles.textstyle14
                          .copyWith(color: AppColors.appNeutralColors400),
                    )
                  ],
                ),
                const SizedBox(width: 60),
                GestureDetector(
                  onTap: onTap,
                  child: const Icon(
                    Iconsax.edit_2,
                    color: AppColors.appPrimaryColors500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}