import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_text12.dart';

class TextOraganization extends StatelessWidget {
  const TextOraganization({
    super.key,
    required this.skill,
  });
  final String skill;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Container(
            height: 4,
            width: 4,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.appNeutralColors600),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: CustomText12(text: skill),
        ),
      ],
    );
  }
}
