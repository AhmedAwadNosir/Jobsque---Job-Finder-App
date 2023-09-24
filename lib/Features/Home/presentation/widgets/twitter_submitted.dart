import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_nature_options.dart';

class TwitterSubmited extends StatefulWidget {
  const TwitterSubmited({
    super.key,
  });

  @override
  State<TwitterSubmited> createState() => _TwitterSubmitedState();
}

class _TwitterSubmitedState extends State<TwitterSubmited> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 93),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.appPrimaryColors100,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.twitterIcon),
                const SizedBox(width: 12),
                const SizedBox(
                  width: 162,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText16Style(title: "Twitter"),
                      CustomText12(
                        text: "Waiting to be selected by the twitter team",
                        color: AppColors.appNeutralColors700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                await Future.delayed(const Duration(seconds: 2));
                setState(() {
                  isActive = !isActive;
                });
              },
              child: JopNatureOptions(
                width: 74,
                jopnature: isActive == true ? "Accepted" : "Submited",
                color: isActive == true
                    ? AppColors.appSuccessColors300
                    : AppColors.appPrimaryColors200,
                textColor: isActive == true
                    ? AppColors.appSuccessColors800
                    : AppColors.appPrimaryColors500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
