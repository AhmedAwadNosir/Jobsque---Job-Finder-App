import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/widgets/personal_details_viewf_body.dart';

class PersonalDetailsView extends StatelessWidget {
  const PersonalDetailsView({super.key});
  static const id = "PersonalDetailsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Personal Details",
        paddingTop: 16,
      ),
      body: PersonalDetailsViewBody(),
    );
  }
}
