import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/file_uploaded_style.dart';
import 'package:jobsque_jobfinder/Features/Profile/models/uploaded_file_model.dart';

class UploadedFilesListViewBuilder extends StatelessWidget {
  UploadedFilesListViewBuilder({super.key});
  List<UploadedFileModel> filesData = [
    UploadedFileModel(
      fileTypeIocn: AppImages.pdfIcon,
      fileName: "UI/UX Designer",
      fileExtintion: "CV.pdf 300KB",
    ),
    UploadedFileModel(
      fileTypeIocn: AppImages.pdfIcon,
      fileName: "3D Designer",
      fileExtintion: "CV.pdf 300KB",
    ),
    UploadedFileModel(
      fileTypeIocn: AppImages.pdfIcon,
      fileName: "Graphik Designer",
      fileExtintion: "CV.pdf 300KB",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.49,
      child: ListView.builder(
        itemCount: filesData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FileUploadedStyle(fileModel: filesData[index]),
          );
        },
      ),
    );
  }
}
