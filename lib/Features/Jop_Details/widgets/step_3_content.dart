import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/file_uploaded_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/upload_file_section.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/apply_section_title.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_text_field_title.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/uploaded_cv_list_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/uploaded_files_list_view_builder.dart';

class Step3Content extends StatelessWidget {
  const Step3Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          const ApplySectionTitle(
            title: "Upload portfolio",
            subTitle: "Fill in your bio data correctly",
          ),
          const SizedBox(
            height: 28,
          ),
          const CustomTextFieldTitle(
            title: "Upload CV",
            symbol: "*",
          ),
          const SizedBox(height: 12),
          UploadedCvListViewBuilder(),
          const SizedBox(height: 20),
          const CustomTextFieldTitle(title: "Other File"),
          const SizedBox(
            height: 12,
          ),
          const UploadeFileSection(),
          const SizedBox(
            height: 47,
          )
        ],
      ),
    );
  }
}
