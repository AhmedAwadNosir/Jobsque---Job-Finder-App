import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';

class TermsConditionsViewBody extends StatelessWidget {
  const TermsConditionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          const CustomText20Style(title: "Lorem ipsum dolor"),
          const SizedBox(height: 12),
          const CustomText14(
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec  feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam  vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
            fontFamily: textFamilyRegular,
            titleColor: AppColors.appNeutralColors500,
          ),
          const SizedBox(height: 17),
          const CustomText20Style(title: "Lorem ipsum dolor"),
          const SizedBox(height: 12),
          const CustomText14(
            title:
                "Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            fontFamily: textFamilyRegular,
            titleColor: AppColors.appNeutralColors500,
          ),
          const SizedBox(height: 12),
          Container(
            color: AppColors.appNeutralColors100,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: CustomText14(
                title:
                    "Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
                titleColor: AppColors.appNeutralColors500,
                fontFamily: textFamilyRegular,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const CustomText14(
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ",
            titleColor: AppColors.appNeutralColors500,
            fontFamily: textFamilyRegular,
          )
        ],
      ),
    );
  }
}
