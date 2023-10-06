import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/states_manager/fetch_saved_jop/fetch_saved_jop_cubit.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/widgets/found_saved_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/widgets/no_saved_jop_view.dart';

class SavedJopsViewBody extends StatelessWidget {
  const SavedJopsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSavedJopCubit, FetchSavedJopState>(
      builder: (context, state) {
        if (state is FetchSavedJopSuccess) {
          if (state.savedJops.isNotEmpty) {
            return  FoundSavedJopsView(savedJops:state.savedJops);
          } else {
            return const NoSavedJopsView();
          }
        } else {
          return Container();
        }
      },
    );
  }
}
