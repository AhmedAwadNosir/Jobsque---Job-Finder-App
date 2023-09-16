import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/two_step_verification_view_body.dart';

class TwoStepVerificationView extends StatelessWidget {
  const TwoStepVerificationView({super.key});
  static const id = "TwoStepVerificationView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Two-step verification",
        paddingTop: 16,
      ),
      body: TwoStepVerificationViewBody(),
    );
  }
}

