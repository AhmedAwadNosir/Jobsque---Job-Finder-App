import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/custom_security_option.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});
  static const id = "PhoneNumberView";

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Phone number",
        paddingTop: 16,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 44),
            CustomPhoneNumberTextField(
              title: "Main phone number",
            ),
            SizedBox(height: 20),
            CustomSecurityOption(
              optionName: "Use the phone number to reset your password",
              textWidth: 0.63,
            )
          ],
        ),
      ),
    );
  }
}
