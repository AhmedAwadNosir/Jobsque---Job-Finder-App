import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/apply_section_title.dart';

class Step1Content extends StatelessWidget {
  const Step1Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          ApplySectionTitle(
            title: "Biodata",
            subTitle: "Fill in your bio data correctly",
          ),
          SizedBox(
            height: 28,
          ),
          CustomTextFieldSection(
            title: "Full Name",
            prefixICon: Icon(
              Iconsax.user_square,
              color: AppColors.appNeutralColors400,
            ),
            sympol: "*",
          ),
          SizedBox(height: 20),
          CustomTextFieldSection(
            title: "Email",
            prefixICon: Icon(
              Iconsax.sms,
              color: AppColors.appNeutralColors400,
            ),
            sympol: "*",
          ),
          SizedBox(height: 20),
          CustomPhoneNumberTextField(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
