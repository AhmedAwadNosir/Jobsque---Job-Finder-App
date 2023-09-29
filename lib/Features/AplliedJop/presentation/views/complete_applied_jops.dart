import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/data/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/widgets/complete_applied_jops_view_body.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/add_other_cv_files/add_other_cv_files_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/add_cv_file_cubit/add_cv_file_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class CompleteAppliedJops extends StatelessWidget {
  const CompleteAppliedJops({
    super.key,
    required this.jopdata,
  });
  final AppliedJopModel jopdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Applied Job",
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddOtherCvFilesCubit(),
          ),
          BlocProvider(
            create: (context) => FetchCvFilesCubit()..fetchCvFiles(),
          ),
          BlocProvider(
            create: (context) => FetchOtherCvFielsCubit()..fetchOtherCvFiles(),
          ),
          BlocProvider(create: (context) => AddCvFileCubit()),
        ],
        child: CompleteAppliedJopsBody(
          jopData: jopdata,
        ),
      ),
    );
  }
}
