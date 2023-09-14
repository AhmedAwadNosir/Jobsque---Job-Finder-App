import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/circle_profile_image.dart';

class UserProfileStakeStyle extends StatelessWidget {
  const UserProfileStakeStyle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 190,
              color: AppColors.appPrimaryColors100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    CustomBar(
                      centerPart: "Profile",
                      rightPart: SizedBox(
                        child: IconButton(
                            constraints:
                                BoxConstraints.tight(const Size(37, 39)),
                            onPressed: () {},
                            icon: const Icon(
                              Iconsax.logout_1,
                              color: AppColors.appInDangerColors500,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 46,
              width: double.infinity,
              color: Colors.white,
            ),
          ],
        ),
        Positioned(
            left: MediaQuery.of(context).size.width * 0.4,
            top: 145,
            child: const CircleProfileImage(
              userImage: AppImages.userImage,
            ))
      ],
    );
  }
}
