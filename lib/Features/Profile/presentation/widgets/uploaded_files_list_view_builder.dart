import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/file_uploaded_style.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

// ignore: must_be_immutable
class UploadedFilesListViewBuilder extends StatelessWidget {
  const UploadedFilesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCvFilesCubit, FetchCvFilesState>(
      builder: (context, state) {
        if (state is FetchCvFilesSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.48,
            child: ListView.builder(
              itemCount: state.cvFiles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: FileUploadedStyle(fileModel: state.cvFiles[index]),
                );
              },
            ),
          );
        } else if (state is FetchCvFilesFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
