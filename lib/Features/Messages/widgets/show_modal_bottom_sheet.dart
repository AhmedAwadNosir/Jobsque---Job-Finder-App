import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_bottom_sheet_button.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Image.asset(AppImages.vector),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Message filters",
                style: AppFontsStyles.textstyle18.copyWith(
                    fontFamily: textFamilyMedium,
                    color: AppColors.appNeutralColors900),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          CustomBottomSheetButton(
            buttonName: "Unread",
            onTap: () {},
          ),
          const SizedBox(height: 12),
          CustomBottomSheetButton(
            buttonName: "Spam",
            onTap: () {},
          ),
          const SizedBox(height: 12),
          CustomBottomSheetButton(
            buttonName: "Unread",
            onTap: () {},
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
