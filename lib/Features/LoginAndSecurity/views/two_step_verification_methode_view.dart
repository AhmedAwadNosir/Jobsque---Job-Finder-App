import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/two_step_verification_methode_view_body.dart';

class TwoStepVerificationMethodeView extends StatelessWidget {
  const TwoStepVerificationMethodeView({super.key});
  static const id = "TwoStepVerificationMethodeView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Two-step verification",
        paddingTop: 16,
      ),
      body: TwoStepVerificationMethodeViewBody(),
    );
  }
}
