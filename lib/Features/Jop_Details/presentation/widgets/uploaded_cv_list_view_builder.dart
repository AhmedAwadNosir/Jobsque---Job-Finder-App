import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/file_uploaded_style.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';

// ignore: must_be_immutable
class UploadedCvListViewBuilder extends StatelessWidget {
  const UploadedCvListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchOtherCvFielsCubit, FetchOtherCvFielsState>(
      builder: (context, state) {
        if (state is FetchOtherCvFielsSuccess) {
          return ListView.builder(
            itemCount: state.cvFiels.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: FileUploadedStyle(fileModel: state.cvFiels[index]),
              );
            },
          );
        } else if (state is FetchOtherCvFielsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
