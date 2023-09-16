import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/upload_file_section.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/uploaded_files_list_view_builder.dart';

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
          const UploadeFileSection(),
          const SizedBox(height: 24),
          UploadedFilesListViewBuilder(),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}
