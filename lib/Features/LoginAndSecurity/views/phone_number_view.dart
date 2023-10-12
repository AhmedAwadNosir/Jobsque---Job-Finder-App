import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';

import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/phone_number_view_body.dart';

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
      body:PhoneNumberViewBody()
    );
  }
}
