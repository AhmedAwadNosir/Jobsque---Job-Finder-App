import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/widgets/experience_view_body.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});
  static const id = "ExperienceView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Experience", paddingTop: 16),
      body: ExperienceViewBody(),
    );
  }
}
