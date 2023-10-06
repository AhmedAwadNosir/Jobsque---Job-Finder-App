import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/apply_jop_view_body.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/add_other_cv_files/add_other_cv_files_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/add_cv_file_cubit/add_cv_file_cubit.dart';

class ApplyJopView extends StatefulWidget {
  const ApplyJopView({super.key, required this.jopid});
  final String jopid;

  @override
  State<ApplyJopView> createState() => _ApplyJopViewState();
}

class _ApplyJopViewState extends State<ApplyJopView> {
  @override
  void initState() {
    BlocProvider.of<FetchProfileDataCubit>(context).fetchPorfileDataCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Apply Job",
        paddingTop: 10,
      ),
      body: SafeArea(
          child: MultiBlocProvider(
              providers: [
            BlocProvider(
              create: (context) => AddOtherCvFilesCubit(),
            ),
            BlocProvider(
              create: (context) =>
                  FetchOtherCvFielsCubit()..fetchOtherCvFiles(),
            ),
            BlocProvider(
              create: (context) => AddCvFileCubit(),
            ),
          ],
              child: ApplyJopViewBody(
                jopId: widget.jopid,
              ))),
    );
  }
}
