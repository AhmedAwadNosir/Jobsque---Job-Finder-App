import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/complete_data_instraction.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_2_content.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class Step2ContentBlocBuilder extends StatelessWidget {
  const Step2ContentBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCvFilesCubit, FetchCvFilesState>(
      builder: (context, state) {
        if (state is FetchCvFilesSuccess) {
          if (state.cvFiles.isEmpty) {
            return const Expanded(
              child: CompleteYourDataInstraction(
                  hieghtSpace: 60,
                  title: "Profile Data Not Completed",
                  subTitle:
                      "Please go to upload your protofolio files before go next to complte applying jop!"),
            );
          } else {
            return Step2Content(cvFiles: state.cvFiles);
          }
        } else if (state is FetchCvFilesFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
