import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/personal_details_viewf_body.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView({super.key, this.appBarTitle});
  static const id = "PersonalDetailsView";
  final String? appBarTitle;

  @override
  State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.appBarTitle ?? "Personal Details",
        paddingTop: 16,
      ),
      body: PersonalDetailsViewBody(),
    );
  }
}
