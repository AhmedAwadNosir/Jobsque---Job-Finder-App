import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/choose_file_section.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

// ignore: must_be_immutable
class ChooseFileSectionListViewBuilder extends StatelessWidget {
  const ChooseFileSectionListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCvFilesCubit, FetchCvFilesState>(
      builder: (context, state) {
        if (state is FetchCvFilesSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.cvFiles.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ChooseFileSection(
                  cvFileModel: state.cvFiles[index],
                ),
              ),
            ),
          );
        } else if (state is FetchCvFilesFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
