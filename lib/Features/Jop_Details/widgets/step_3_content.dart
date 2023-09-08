import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/file_uploaded_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/upload_file_section.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/apply_section_title.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_text_field_title.dart';

class Step3Content extends StatelessWidget {
  const Step3Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          ApplySectionTitle(
            title: "Upload portfolio",
            subTitle: "Fill in your bio data correctly",
          ),
          SizedBox(
            height: 28,
          ),
          CustomTextFieldTitle(
            title: "Upload CV",
            symbol: "*",
          ),
          SizedBox(height: 12),
          FileUploadedStyle(
            fileTypeICon: AppImages.pdfIcon,
            fileName: "Rafif Dian.CV",
            filetype: "CV.pdf 300KB",
          ),
          SizedBox(height: 20),
          CustomTextFieldTitle(title: "Other File"),
          SizedBox(
            height: 12,
          ),
          UploadeFileSection(),
        ],
      ),
    );
  }
}
