import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_check_box.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_dorp_down_button_form_field.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/custom_data_section.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/edit_profile_data/edit_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';

class ExperienceViewBody extends StatefulWidget {
  const ExperienceViewBody({super.key});

  @override
  State<ExperienceViewBody> createState() => _ExperienceViewBodyState();
}

class _ExperienceViewBodyState extends State<ExperienceViewBody> {
  String? experince;
  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    return BlocBuilder<FetchProfileDataCubit, FetchProfileDataState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 32),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appNeutralColors300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 12, bottom: 16),
                    child: Column(
                      children: [
                        CustomTextFieldSection(
                          title: "Position *",
                          titleColor: AppColors.appNeutralColors400,
                          titleSpace: 6,
                          onSubmited: (value) {
                            value != ""
                                ? experince = value
                                : state is FetchProfileDataSuccess
                                    ? state.profileDataModel.exceprience
                                    : "";
                          },
                          onChanged: (value) {
                            value != ""
                                ? experince = value
                                : state is FetchProfileDataSuccess
                                    ? state.profileDataModel.exceprience
                                    : "";
                          },
                          content: state is FetchProfileDataSuccess
                              ? state.profileDataModel.exceprience
                              : "",
                          contentStyle: AppFontsStyles.textstyle16.copyWith(
                              fontFamily: textFamilyMedium,
                              color: AppColors.appNeutralColors800),
                        ),
                        const SizedBox(height: 16),
                        CustomDorpDownButtonFormField(
                          title: "Type of work",
                          style: AppFontsStyles.textstyle28.copyWith(
                              fontFamily: textFamilyMedium,
                              color: AppColors.appNeutralColors800),
                          itemsList: const ["Full Time", "Part Time", "Remote"],
                          initialValue: "Full Time",
                          titleColor: AppColors.appNeutralColors400,
                        ),
                        const SizedBox(height: 16),
                        CustomTextFieldSection(
                          title: "Company name *",
                          titleColor: AppColors.appNeutralColors400,
                          titleSpace: 6,
                          onSubmited: (value) {},
                          onChanged: (value) {},
                          content: "Supafast Studio",
                          contentStyle: AppFontsStyles.textstyle16.copyWith(
                              fontFamily: textFamilyMedium,
                              color: AppColors.appNeutralColors800),
                        ),
                        const SizedBox(height: 16),
                        CustomTextFieldSection(
                          title: "Location",
                          titleColor: AppColors.appNeutralColors400,
                          titleSpace: 6,
                          onSubmited: (value) {},
                          onChanged: (value) {},
                          content: "Purwokerto, Banyumas",
                          contentStyle: AppFontsStyles.textstyle16.copyWith(
                              fontFamily: textFamilyMedium,
                              color: AppColors.appNeutralColors800),
                          prefixICon: const Icon(
                            Iconsax.location,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            CustomCheckBox(isChecked: isChecked),
                            const SizedBox(width: 6),
                            const CustomText14(
                                title: "I am currently working in this role")
                          ],
                        ),
                        const SizedBox(height: 16),
                        CustomTextFieldSection(
                          title: "Start Year *",
                          titleColor: AppColors.appNeutralColors400,
                          titleSpace: 6,
                          onSubmited: (value) {},
                          onChanged: (value) {},
                          content: "February 2021",
                          contentStyle: AppFontsStyles.textstyle16.copyWith(
                              fontFamily: textFamilyMedium,
                              color: AppColors.appNeutralColors800),
                        ),
                        const SizedBox(height: 32),
                        BlocConsumer<EditProfileDataCubit,
                            EditProfileDataState>(
                          listener: (context, state) {
                            if (state is EditProfileDataSuccess) {
                              showSnackBar(
                                  "your Data has been Saved Successfully",
                                  context);
                              BlocProvider.of<FetchProfileDataCubit>(context)
                                  .fetchPorfileDataCubit();
                            }
                          },
                          builder: (context, state) {
                            return CustomButton(
                                onPressed: () async {
                                  await BlocProvider.of<EditProfileDataCubit>(
                                          context)
                                      .editProfileData(
                                          profileDataModel: ProfileDataModel(
                                              exceprience: experince));
                                },
                                buttonName: "Save",
                                buttonchild: state is EditProfileDataLoading
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : null);
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                CustomDataSection(
                  dataImage: AppImages.companyLogo,
                  title: "Senior UI/UX Designer",
                  subTitle: "Remote • GrowUp Studio",
                  time: "2019 - 2022",
                  onTap: () {},
                ),
                const SizedBox(height: 56),
              ],
            ),
          ),
        );
      },
    );
  }
}
