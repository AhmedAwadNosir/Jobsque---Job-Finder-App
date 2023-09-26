import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo_implmentation.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_recent_jops/fetch_recent_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_search_jops/fetch_search_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_suggested_jops/fetch_suggested_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/home_view_body.dart';

class HomeViewWithProviders extends StatelessWidget {
  const HomeViewWithProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => FetchSuggestedJopsCubit(
                getIt.get<HomeRepoImplmentaion>(),
              )..fetchSuggestedJopsCubit()),
      BlocProvider(
        create: (context) => FetchRecentJopsCubit(
          getIt.get<HomeRepoImplmentaion>(),
        )..fetchRecentJopsCubit(),
      ),
      
    ], child: const HomeViewBody());
  }
}
