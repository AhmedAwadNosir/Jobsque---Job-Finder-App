import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/widgets/education_view_body.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key});
  static const id = "EducationView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Education",
        paddingTop: 16,
      ),
      body: EducationViewBody(),
    );
  }
}
