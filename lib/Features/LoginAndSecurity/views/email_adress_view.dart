import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';

class EmailAdressView extends StatelessWidget {
  const EmailAdressView({super.key, required this.userEmailAddress});
  static const id = "EmailAdreesView";
  final String userEmailAddress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Email address",
        paddingTop: 16,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 44),
            CustomTextFieldSection(
              title: "Main e-mail address",
              prefixICon: const Icon(
                Iconsax.sms,
                size: 20,
                color: AppColors.appNeutralColors400,
              ),
              content: userEmailAddress,
            )
          ],
        ),
      ),
    );
  }
}
