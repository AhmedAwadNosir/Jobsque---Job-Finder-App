import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Profile/models/uploaded_file_model.dart';

class FileUploadedStyle extends StatelessWidget {
  const FileUploadedStyle({
    super.key,
    required this.fileModel
  });
  final UploadedFileModel fileModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 74,
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.appNeutralColors300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            SvgPicture.asset(fileModel.fileTypeIocn),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText14(title: fileModel.fileName),
                CustomText12(
                  text: fileModel.fileExtintion,
                  color: AppColors.appNeutralColors500,
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Iconsax.edit_2,
                color: AppColors.appPrimaryColors500,
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Iconsax.close_circle,
                color: AppColors.appInDangerColors500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
