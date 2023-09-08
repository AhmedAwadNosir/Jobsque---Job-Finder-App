import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_container.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class UploadeFileSection extends StatelessWidget {
  const UploadeFileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffECF2FF),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
        child: Column(
          children: [
            const CircleIconContainer(
              icon: Iconsax.document_upload5,
              iconSize: 32,
            ),
            const SizedBox(height: 16),
            Text(
              "Upload your other file",
              style: AppFontsStyles.textstyle18.copyWith(
                fontFamily: textFamilyMedium,
                color: AppColors.appNeutralColors900,
              ),
            ),
            const SizedBox(height: 8),
            const CustomText14(
              title: "Max. file size 10 MB",
              titleColor: AppColors.appNeutralColors500,
            ),
            const SizedBox(height: 24),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.appPrimaryColors500),
                  borderRadius: BorderRadius.circular(100)),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appPrimaryColors100,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.export_1,
                        size: 20,
                        color: AppColors.appPrimaryColors500,
                      ),
                      SizedBox(width: 10),
                      CustomText16Style(
                        title: "Add file",
                        color: AppColors.appPrimaryColors500,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
