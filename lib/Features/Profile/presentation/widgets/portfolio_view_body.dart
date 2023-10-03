import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/upload_file_section.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/uploaded_files_list_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/add_cv_file_cubit/add_cv_file_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class PortFolioViewbody extends StatelessWidget {
  const PortFolioViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36),
          const CustomText20Style(
            title: "Add portfolio here",
          ),
          const SizedBox(height: 16),
          UploadeFileSection(
            onPressed: () async {
              await BlocProvider.of<AddCvFileCubit>(context).addCvFile();
              await BlocProvider.of<FetchCvFilesCubit>(context).fetchCvFiles();
            },
          ),
          const SizedBox(height: 24),
          const UploadedFilesListViewBuilder(),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}
