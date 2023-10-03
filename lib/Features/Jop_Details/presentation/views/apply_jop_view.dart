import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/repos/apply_jop_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/apply_jop_view_body.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/add_other_cv_files/add_other_cv_files_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/appLy_jop/apply_jop_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/add_cv_file_cubit/add_cv_file_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class ApplyJopView extends StatelessWidget {
  const ApplyJopView({super.key, required this.jopid});
  final String jopid;
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
            BlocProvider(
              create: (context) => ApplyJopCubit(getIt.get<ApplyJopRepoImpl>()),
            ),
          ],
              child: ApplyJopViewBody(
                jopId: jopid,
              ))),
    );
  }
}
