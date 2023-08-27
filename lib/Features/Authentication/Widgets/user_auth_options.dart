import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class UserAuthOptions extends StatelessWidget {
  const UserAuthOptions({
    super.key,
    required this.operationOption,
  });
  final String operationOption;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70.5,
          height: 1,
          color: AppColors.appNeutralColors300,
        ),
        const SizedBox(
          width: 25,
        ),
        Text(operationOption,
            style: AppFontsStyles.textstyle14
                .copyWith(color: AppColors.appNeutralColors500)),
        const SizedBox(
          width: 25,
        ),
        Container(
          width: 70.5,
          height: 1,
          color: AppColors.appNeutralColors300,
        ),
      ],
    );
  }
}
