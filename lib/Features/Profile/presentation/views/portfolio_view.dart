import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/add_other_cv_files/add_other_cv_files_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/portfolio_view_body.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/add_cv_file_cubit/add_cv_file_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class PortFolioView extends StatelessWidget {
  const PortFolioView({super.key});
  static const id = "PortfolioView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        paddingTop: 16,
        title: "PortFolio",
      ),
      body: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => AddCvFileCubit()),
        BlocProvider(create: (context) => FetchCvFilesCubit()..fetchCvFiles()),
        BlocProvider(create: (context) => FetchOtherCvFielsCubit()),
        BlocProvider(create: (context) => AddOtherCvFilesCubit())
      ], child: const PortFolioViewbody()),
    );
  }
}
