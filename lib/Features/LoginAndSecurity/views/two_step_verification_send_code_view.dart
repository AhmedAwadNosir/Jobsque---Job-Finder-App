import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/two_step_verification_send_code_view_body.dart';

class TwoStepVerificationSendCodeView extends StatelessWidget {
  const TwoStepVerificationSendCodeView({super.key});
  static const id = "TwoStepVerificationSendCodeView";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: "Two-step verification",
        paddingTop: 16,
      ),
      body: TwoStepVerificationSendCodeViewBody(),
    );
  }
}
