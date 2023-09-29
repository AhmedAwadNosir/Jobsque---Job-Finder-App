import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_container.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/add_other_cv_files/add_other_cv_files_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/fetch_other_cv_files/fetch_other_cv_fiels_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/add_cv_file_cubit/add_cv_file_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/states_manager/cubit/fetch_cv_files_cubit.dart';

class UploadeFileSection extends StatefulWidget {
  const UploadeFileSection({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  State<UploadeFileSection> createState() => _UploadeFileSectionState();
}

class _UploadeFileSectionState extends State<UploadeFileSection> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<AddCvFileCubit, AddCvFileState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is AddCvFileSuccess) {
                showSnackBar("file Added Succesfully", context);
                BlocProvider.of<FetchCvFilesCubit>(context).fetchCvFiles();
              }
              if (state is AddCvFileFailure) {
                showSnackBar(state.errorMessage, context);
              }
            },
          ),
          BlocListener<AddOtherCvFilesCubit, AddOtherCvFilesState>(
            listener: (context, state) {
              if (state is AddOtherCvFilesSuccess) {
                BlocProvider.of<FetchOtherCvFielsCubit>(context)
                    .fetchOtherCvFiles();
              }
              if (state is AddOtherCvFilesFailure) {
                showSnackBar(state.errorMessages, context);
              }
              // TODO: implement listener
            },
          ),
        ],
        child: DottedBorder(
          dashPattern: const [6, 0, 2, 3],
          color: AppColors.appPrimaryColors500,
          borderType: BorderType.RRect,
          borderPadding: const EdgeInsets.all(1),
          radius: const Radius.circular(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              color: const Color(0xffECF2FF),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 20),
                child: Column(
                  children: [
                    const CircleIconContainer(
                      icon: Iconsax.document_upload5,
                      iconSize: 32,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Upload your other file",
                      style: AppFontsStyles.textstyle18.copyWith(
                        fontFamily: textFamilyMedium,
                        color: AppColors.appNeutralColors900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const CustomText14(
                      title: "Max. file size 10 MB",
                      titleColor: AppColors.appNeutralColors500,
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 40,
                      constraints:
                          const BoxConstraints(minWidth: double.infinity),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.appPrimaryColors500),
                          borderRadius: BorderRadius.circular(100)),
                      child: ElevatedButton(
                          onPressed: widget.onPressed,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appPrimaryColors100,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Iconsax.export_1,
                                size: 20,
                                color: AppColors.appPrimaryColors500,
                              ),
                              SizedBox(width: 10),
                              CustomText16Style(
                                title: "Add file",
                                color: AppColors.appPrimaryColors500,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
