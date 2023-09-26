import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class UserAboutSection extends StatelessWidget {
  const UserAboutSection({
    super.key, required this.userAboutInfo,
  });
  final String userAboutInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText16Style(
              title: "About",
              color: AppColors.appNeutralColors500,
            ),
            GestureDetector(
              onTap: () {},
              child: const CustomText14(
                title: "Edit",
                titleColor: AppColors.appPrimaryColors500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
         userAboutInfo,
          softWrap: true,
          style: AppFontsStyles.textstyle14
              .copyWith(color: AppColors.appNeutralColors500),
        )
      ],
    );
  }
}
