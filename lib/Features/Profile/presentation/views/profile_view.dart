import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    BlocProvider.of<FetchProfileDataCubit>(context).fetchPorfileDataCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}
