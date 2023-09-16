import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';

class EmailAdressView extends StatelessWidget {
  const EmailAdressView({super.key});
  static const id = "EmailAdreesView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Email address",
        paddingTop: 16,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 44),
            CustomTextFieldSection(
              title: "Main e-mail address",
              prefixICon: Icon(
                Iconsax.sms,
                size: 20,
                color: AppColors.appNeutralColors400,
              ),
              content: "rafifdian12@gmail.com",
            )
          ],
        ),
      ),
    );
  }
}
