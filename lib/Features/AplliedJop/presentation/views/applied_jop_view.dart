import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/widgets/applied_jop_view_body.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo_implmentation.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_recent_jops/fetch_recent_jops_cubit.dart';

class AppliedJopView extends StatelessWidget {
  const AppliedJopView({super.key});
  static const id = "AppliedJopView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Applied Job",
        paddingTop: 16,
      ),
      body: BlocProvider(
        create: (context) =>
            FetchRecentJopsCubit(getIt.get<HomeRepoImplmentaion>())
              ..fetchRecentJopsCubit(),
        child: const AppliedJopViewBody(),
      ),
    );
  }
}
