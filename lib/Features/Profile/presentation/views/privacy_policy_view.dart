import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/privacy_policy_view_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
  static const id = "PrivacyPolicyView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Privacy Policy",
        paddingTop: 16,
      ),
      body: PrivacyPolicyViewBody(),
    );
  }
}
