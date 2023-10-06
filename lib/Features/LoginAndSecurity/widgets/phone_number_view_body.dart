import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/custom_security_option.dart';

class PhoneNumberViewBody extends StatelessWidget {
  const PhoneNumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferencesUtil.getString(userMobilekey),
      builder: (context, snapshot) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 44),
            CustomPhoneNumberTextField(
              title: "Main phone number",
              content: snapshot.data,
              onChanged: (value) {},
              onSubmited: (value) {
                log(snapshot.data.toString());
              },
            ),
            const SizedBox(height: 20),
            const CustomSecurityOption(
              optionName: "Use the phone number to reset your password",
              textWidth: 0.63,
            )
          ],
        ),
      ),
    );
  }
}
