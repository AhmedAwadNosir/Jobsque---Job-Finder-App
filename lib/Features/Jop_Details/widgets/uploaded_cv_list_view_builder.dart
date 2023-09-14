import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/file_uploaded_style.dart';
import 'package:jobsque_jobfinder/Features/Profile/models/uploaded_file_model.dart';

class UploadedCvListViewBuilder extends StatelessWidget {
  UploadedCvListViewBuilder({super.key});
  List<UploadedFileModel> filesData = [
    UploadedFileModel(
      fileTypeIocn: AppImages.pdfIcon,
      fileName: "UI/UX Designer",
      fileExtintion: "CV.pdf 300KB",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: filesData.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: FileUploadedStyle(fileModel: filesData[index]),
        );
      },
    );
  }
}
