import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';

class UserJopsInfo extends StatelessWidget {
  const UserJopsInfo({
    super.key,
    required this.jopAppliedNumber,
    required this.jopReviwedNumber,
    required this.jopContactedNumber,
  });
  final int jopAppliedNumber;
  final int jopReviwedNumber;
  final int jopContactedNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              width: 91,
              child: Column(
                children: [
                  const CustomText14(
                    title: "Applied",
                    titleColor: AppColors.appNeutralColors500,
                  ),
                  const SizedBox(height: 4),
                  CustomText20Style(title: jopAppliedNumber.toString())
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              thickness: 1,
              width: 2,
              color: AppColors.appNeutralColors300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              width: 91,
              child: Column(
                children: [
                  const CustomText14(
                    title: "Reviewed",
                    titleColor: AppColors.appNeutralColors500,
                  ),
                  const SizedBox(height: 4),
                  CustomText20Style(title: jopReviwedNumber.toString())
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              thickness: 1,
              width: 2,
              color: AppColors.appNeutralColors300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              width: 91,
              child: Column(
                children: [
                  const CustomText14(
                    title: "Contacted",
                    titleColor: AppColors.appNeutralColors500,
                  ),
                  const SizedBox(height: 4),
                  CustomText20Style(title: jopContactedNumber.toString())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
