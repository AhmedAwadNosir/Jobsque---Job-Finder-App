import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_point.dart';
import 'package:jobsque_jobfinder/Core/functions/get_cv_file_name.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';

class ChooseFileSection extends StatefulWidget {
  const ChooseFileSection({
    super.key,
    required this.cvFileModel,
  });
  final CvFileModel cvFileModel;

  @override
  State<ChooseFileSection> createState() => _ChooseFileSectionState();
}

class _ChooseFileSectionState extends State<ChooseFileSection> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color:
              isActive == true ? AppColors.appPrimaryColors100 : Colors.white,
          border: Border.all(
              width: 1,
              color: isActive == true
                  ? AppColors.appPrimaryColors500
                  : AppColors.appNeutralColors300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText16Style(
                      title: getFileName(widget.cvFileModel.cvFileName)),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText14(
                        title: "CV.${widget.cvFileModel.cvFileExcetintion}",
                        titleColor: AppColors.appNeutralColors500,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const CustomPoint(
                        pointColor: AppColors.appNeutralColors400,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CustomText14(
                        title:
                            "Portfolio.${widget.cvFileModel.cvFileExcetintion}",
                        titleColor: AppColors.appNeutralColors500,
                      ),
                    ],
                  )
                ],
              ),
              isActive == true
                  ? Image.asset(AppImages.iconChecked)
                  : Image.asset(AppImages.iconCheck)
            ],
          ),
        ),
      ),
    );
  }
}
