import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/functions/get_cv_file_name.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class FileUploadedStyle extends StatelessWidget {
  const FileUploadedStyle({super.key, required this.fileModel});
  final CvFileModel fileModel;
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
            SvgPicture.asset(AppImages.pdfIcon),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child:
                        CustomText14(title: getFileName(fileModel.cvFileName))),
                CustomText12(
                  text:
                      "CV.${fileModel.cvFileExcetintion} ${fileModel.fileSize}KB",
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
              onTap: () {
                fileModel.delete();
                BlocProvider.of<FetchOtherCvFielsCubit>(context)
                    .fetchOtherCvFiles();
                BlocProvider.of<FetchCvFilesCubit>(context).fetchCvFiles();
              },
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
