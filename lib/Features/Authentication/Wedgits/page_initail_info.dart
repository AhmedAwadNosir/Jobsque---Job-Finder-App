import 'package:flutter/cupertino.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';
import '../../../Core/Utils/constans.dart';

class PageInitialinfo extends StatelessWidget {
  const PageInitialinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        "Login ",
        textAlign: TextAlign.start,
        style: AppFontsStyles.textstyle28.copyWith(
          fontFamily: textFamilyMedium,
          height: 1.4,
          color: const Color(AppColors.appNeutralColors900),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        "Please login to find your dream job",
        textAlign: TextAlign.start,
        style: AppFontsStyles.textstyle16.copyWith(
          height: 1.3,
          color: const Color(AppColors.appNeutralColors500),
        ),
      ),
    ]);
  }
}
