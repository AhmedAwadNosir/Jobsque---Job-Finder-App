import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/cusotm_mision.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/views/portfolio_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class PortfolioMessionBlocBuilder extends StatelessWidget {
  const PortfolioMessionBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCvFilesCubit, FetchCvFilesState>(
      builder: (context, state) {
        return CusotmMision(
          misionTitle: "Portfolio",
          mistionSubTitle:
              "Create your portfolio. Applying for various types of jobs is easier.",
          isCompleted: BlocProvider.of<FetchCvFilesCubit>(context)
              .getCvFilesCompletedStates(
                  state is FetchCvFilesSuccess ? state.cvFiles : [],),
          diveder: false,
          destinaion: PortFolioView.id,
        );
      },
    );
  }
}
