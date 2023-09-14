import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/circle_profile_image.dart';

class ChangeCircleUserPhoto extends StatelessWidget {
  const ChangeCircleUserPhoto({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const CircleProfileImage(userImage: AppImages.userImage),
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  shape: BoxShape.circle,
                  border: Border.all(width: 4, color: Colors.white)),
              child: Center(
                  child: IconButton(
                onPressed: onPressed,
                icon: const Icon(
                  Iconsax.camera,
                  color: Colors.white,
                  size: 32,
                ),
              )),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const CustomText16Style(
          title: "Change Photo",
          color: AppColors.appPrimaryColors500,
        ),
      ],
    );
  }
}