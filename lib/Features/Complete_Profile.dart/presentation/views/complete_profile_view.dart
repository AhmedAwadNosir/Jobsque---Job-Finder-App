import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/complete_profile_view_body.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});
  static const id = "CompleteProfileView";

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  @override
  void initState() {
    BlocProvider.of<FetchProfileDataCubit>(context).fetchPorfileDataCubit();
    BlocProvider.of<FetchCvFilesCubit>(context).fetchCvFiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Complete Profile",
        paddingTop: 16,
      ),
      body: CompleteProfileViewBody(),
    );
  }
}
