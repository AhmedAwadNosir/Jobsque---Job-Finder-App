import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Profile/models/language_model.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/check_circle_icon.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({
    super.key,
    required this.languageModel,
    this.onTap,
  });
  final LanguageModel languageModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(languageModel.languageCountry),
            const SizedBox(width: 12),
            CustomText16Style(title: languageModel.language),
            const Spacer(),
            CheckCircleIcon(
              isSelected: languageModel.isSelected,
              onTap: onTap,
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(
          thickness: 1,
          color: AppColors.appNeutralColors300,
        )
      ],
    );
  }
}
