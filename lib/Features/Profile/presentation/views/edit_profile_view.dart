import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/edit_profile_view_body.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});
  static const id = "editProfileview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        paddingTop: 16,
        title: "Edit Profile",
      ),
      body: EditProfileViewBody(),
    );
  }
}
