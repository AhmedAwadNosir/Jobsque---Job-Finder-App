import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/terms_conitions_view_body.dart';

class TermsConditionsView extends StatelessWidget {
  const TermsConditionsView({super.key});
  static const id = "TermsConditionsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Terms & Conditions",
        paddingTop: 16,
      ),
      body: TermsConditionsViewBody(),
    );
  }
}
