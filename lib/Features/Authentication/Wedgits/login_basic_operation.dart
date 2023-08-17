import 'package:flutter/material.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';

class LoginBasicOperation extends StatefulWidget {
  const LoginBasicOperation({
    super.key,
  });

  @override
  State<LoginBasicOperation> createState() => _LoginBasicOperationState();
}

class _LoginBasicOperationState extends State<LoginBasicOperation> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 18,
          width: 18,
          child: Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              value: isChecked,
              fillColor: MaterialStatePropertyAll(isChecked
                  ? AppColors.appPrimaryColors500
                  : AppColors.appNeutralColors400),
              onChanged: (newvalue) {
                setState(() {
                  isChecked = newvalue!;
                });
              }),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "Remember me",
          style: AppFontsStyles.textstyle14
              .copyWith(color: AppColors.appNeutralColors800),
        ),
        const Spacer(),
        Text(
          "Forgot Password?",
          style: AppFontsStyles.textstyle14
              .copyWith(color: AppColors.appPrimaryColors500),
        )
      ],
    );
  }
}
