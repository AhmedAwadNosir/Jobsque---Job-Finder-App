import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/apply_section_title.dart';

class Step1Content extends StatefulWidget {
  const Step1Content({
    super.key,
    required this.passUserName,
    required this.passemail,
    required this.passmobile,
  });
  final Function(String username) passUserName;
  final Function(String emailAddress) passemail;
  final Function(String phoneNumber) passmobile;
  @override
  State<Step1Content> createState() => _Step1ContentState();
}

class _Step1ContentState extends State<Step1Content> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          const ApplySectionTitle(
            title: "Biodata",
            subTitle: "Fill in your bio data correctly",
          ),
          const SizedBox(
            height: 28,
          ),
          CustomTextFieldSection(
            title: "Full Name",
            onSubmited: (value) {
              setState(() {
                widget.passUserName(value);
              });
            },
            onChanged: (value) {
              setState(() {
                widget.passUserName(value);
              });
            },
            prefixICon: const Icon(
              Iconsax.user_square,
              color: AppColors.appNeutralColors400,
            ),
            sympol: "*",
          ),
          const SizedBox(height: 20),
          CustomTextFieldSection(
            title: "Email",
            onSubmited: (value) {
              setState(() {
                widget.passemail(value);
              });
            },
            onChanged: (value) {
              setState(() {
                widget.passemail(value);
              });
            },
            prefixICon: const Icon(
              Iconsax.sms,
              color: AppColors.appNeutralColors400,
            ),
            sympol: "*",
          ),
          const SizedBox(height: 20),
          CustomPhoneNumberTextField(
            onSubmited: (value) {
              setState(() {
                widget.passmobile(value);
              });
            },
            onChanged: (value) {
              setState(() {
                widget.passmobile(value);
              });
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
