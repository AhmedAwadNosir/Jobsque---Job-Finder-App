import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
    required this.userName,
    required this.jopTitle,
  });
  final String userName;
  final String jopTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText20Style(title: userName),
        Text(
          jopTitle,
          style: AppFontsStyles.textstyle14
              .copyWith(color: AppColors.appNeutralColors500),
        )
      ],
    );
  }
}


