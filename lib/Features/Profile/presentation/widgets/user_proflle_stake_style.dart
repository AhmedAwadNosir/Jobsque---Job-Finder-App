import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_barr.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/login_and_security_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/circle_profile_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                      onTap: () {},
                      centerPart: "Profile",
                      rightPart: SizedBox(
                        child: IconButton(
                            constraints:
                                BoxConstraints.tight(const Size(37, 39)),
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.remove(isLogin);
                              Navigator.pushReplacementNamed(
                                  context, SignInView.id);
                            },
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
