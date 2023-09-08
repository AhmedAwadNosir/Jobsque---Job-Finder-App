import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';


class FileUploadedStyle extends StatelessWidget {
  const FileUploadedStyle({
    super.key,
    required this.fileTypeICon,
    required this.fileName,
    required this.filetype,
  });
  final String fileTypeICon;
  final String fileName;
  final String filetype;
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
            Image.asset(fileTypeICon),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText14(title: fileName),
                CustomText12(
                  text: filetype,
                  color: AppColors.appNeutralColors500,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Iconsax.edit_2,
              color: AppColors.appPrimaryColors500,
            ),
            const SizedBox(width: 8),
            const Icon(
              Iconsax.close_circle,
              color: AppColors.appInDangerColors500,
            ),
          ],
        ),
      ),
    );
  }
}
