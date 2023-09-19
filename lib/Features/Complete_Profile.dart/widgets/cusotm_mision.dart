import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class CusotmMision extends StatelessWidget {
  CusotmMision({
    super.key,
    required this.misionTitle,
    required this.mistionSubTitle,
    required this.destinaion,
    required this.isCompleted,
    required this.diveder,
  });
  bool isCompleted;
  bool diveder;
  final String misionTitle;
  final String mistionSubTitle;
  final String destinaion;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 85,
          decoration: BoxDecoration(
            border: Border.all(
                color: isCompleted
                    ? AppColors.appPrimaryColors300
                    : AppColors.appNeutralColors300),
            borderRadius: BorderRadius.circular(8),
            color: isCompleted ? AppColors.appPrimaryColors100 : Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                SvgPicture.asset(
                    isCompleted ? AppImages.completed : AppImages.notCompleted),
                const SizedBox(width: 12),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.62,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText16Style(title: misionTitle),
                      CustomText12(
                        text: mistionSubTitle,
                        color: AppColors.appNeutralColors500,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, destinaion);
                    },
                    child: const Icon(Iconsax.arrow_right_1)),
              ],
            ),
          ),
        ),
        diveder
            ? SizedBox(
                height: 20,
                child: VerticalDivider(
                  color: isCompleted
                      ? AppColors.appPrimaryColors300
                      : AppColors.appNeutralColors300,
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
