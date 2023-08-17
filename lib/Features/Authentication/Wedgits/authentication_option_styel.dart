import 'package:flutter/material.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';
import '../../../Core/Utils/constans.dart';

class AuthOptionsStyls extends StatelessWidget {
  const AuthOptionsStyls({
    super.key,
    required this.siteIcon,
    required this.siteName,
  });
  final String siteIcon;
  final String siteName;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46,
        width: 154,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.appNeutralColors300,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(siteIcon),
            const SizedBox(
              width: 8,
            ),
            Text(
              siteName,
              style: AppFontsStyles.textstyle14.copyWith(
                  fontFamily: textFamilyMedium, color: const Color(0xff363F5E)),
            )
          ],
        ));
  }
}
