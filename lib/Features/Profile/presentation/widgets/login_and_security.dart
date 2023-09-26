import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class LoginAndSecuritySection extends StatelessWidget {
  const LoginAndSecuritySection({
    super.key,
    required this.title,
    this.value,
    this.ontap,
  });
  final String title;
  final String? value;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText16Style(
              title: title,
              fontfamily: textFamilyRegular,
            ),
            Row(
              children: [
                CustomText14(
                  title: value ?? "",
                  fontFamily: textFamilyRegular,
                  titleColor: AppColors.appNeutralColors500,
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: ontap,
                  child: const Icon(Iconsax.arrow_right_1),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 20.5),
        const Divider(
          thickness: 1,
          color: AppColors.appNeutralColors300,
        )
      ],
    );
  }
}
