import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class ProfileOptionStyle extends StatelessWidget {
  const ProfileOptionStyle({
    super.key,
    this.icon,
    required this.title,
    this.onTap,
    this.rightPart,
  });
  final IconData? icon;
  final String title;
  final void Function()? onTap;
  final Widget? rightPart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon != null
            ? CircleIconStyle(
                pading: 10,
                icon: Icon(
                  icon ?? Iconsax.user_square,
                  color: AppColors.appPrimaryColors500,
                  size: 20,
                ),
              )
            : Container(),
        SizedBox(width: icon != null ? 12 : 0),
        CustomText16Style(
          title: title,
          fontfamily: textFamilyRegular,
        ),
        const Spacer(),
        rightPart ??
            GestureDetector(
              onTap: onTap,
              child: const Icon(
                Iconsax.arrow_right_1,
                size: 16,
              ),
            )
      ],
    );
  }
}
