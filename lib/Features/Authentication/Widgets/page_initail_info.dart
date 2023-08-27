import 'package:flutter/cupertino.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';
import '../../../Core/Utils/constans.dart';

class PageInitialinfo extends StatelessWidget {
  const PageInitialinfo({
    super.key,
    required this.pagegole,
    required this.pagegoledefination,
    this.pagegoleStyle,
    this.textAlign,  this.spacebetween,
  });
  final String pagegole;
  final String pagegoledefination;
  final TextStyle? pagegoleStyle;
  final TextAlign? textAlign;
  final double? spacebetween;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        pagegole,
        textAlign: textAlign ?? TextAlign.start,
        style: pagegoleStyle ??
            AppFontsStyles.textstyle28.copyWith(
              fontFamily: textFamilyMedium,
              height: 1.4,
              color: AppColors.appNeutralColors900,
            ),
      ),
       SizedBox(
        height: spacebetween??8,
      ),
      Text(
        pagegoledefination,
        textAlign: textAlign ?? TextAlign.start,
        style: AppFontsStyles.textstyle16.copyWith(
          height: 1.3,
          color: AppColors.appNeutralColors500,
        ),
      ),
    ]);
  }
}
