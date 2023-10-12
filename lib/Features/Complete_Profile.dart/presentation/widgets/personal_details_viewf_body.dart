import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/personal_detail_button_bloc_consumer.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/change_circle_user_photo.dart';

class PersonalDetailsViewBody extends StatefulWidget {
  const PersonalDetailsViewBody({super.key});

  @override
  State<PersonalDetailsViewBody> createState() =>
      _PersonalDetailsViewBodyState();
}

class _PersonalDetailsViewBodyState extends State<PersonalDetailsViewBody> {
  String? bio;
  String? address;
  String? mobile;
  String? name;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferencesUtil.getString(userName),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return BlocBuilder<FetchProfileDataCubit, FetchProfileDataState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 36),
                      Center(
                        child: ChangeCircleUserPhoto(
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 25),
                      CustomTextFieldSection(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        onSubmited: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        titleSpace: 2,
                        title: "Name",
                        titleColor: AppColors.appNeutralColors400,
                        content: snapshot.data,
                        contentStyle: AppFontsStyles.textstyle16
                            .copyWith(color: AppColors.appNeutralColors800),
                      ),
                      const SizedBox(height: 16),
                      CustomTextFieldSection(
                        onChanged: (value) {
                          setState(() {
                            value != ""
                                ? bio = value
                                : bio = state is FetchProfileDataSuccess
                                    ? state.profileDataModel.bio
                                    : "";
                          });
                        },
                        onSubmited: (value) {
                          setState(() {
                            value != ""
                                ? bio = value
                                : bio = state is FetchProfileDataSuccess
                                    ? state.profileDataModel.bio
                                    : "";
                          });
                        },
                        titleSpace: 2,
                        title: "Bio",
                        titleColor: AppColors.appNeutralColors400,
                        content: state is FetchProfileDataSuccess
                            ? state.profileDataModel.bio
                            : "",
                        contentStyle: AppFontsStyles.textstyle16
                            .copyWith(color: AppColors.appNeutralColors800),
                      ),
                      const SizedBox(height: 16),
                      CustomTextFieldSection(
                        onChanged: (value) {
                          setState(() {
                            value != ""
                                ? address = value
                                : address = state is FetchProfileDataSuccess
                                    ? state.profileDataModel.address
                                    : "";
                          });
                        },
                        onSubmited: (value) {
                          setState(() {
                            value != ""
                                ? address = value
                                : address = state is FetchProfileDataSuccess
                                    ? state.profileDataModel.address
                                    : "";
                            address = value;
                          });
                        },
                        titleSpace: 2,
                        title: "Adress",
                        titleColor: AppColors.appNeutralColors400,
                        content: state is FetchProfileDataSuccess
                            ? state.profileDataModel.address
                            : "",
                        contentStyle: AppFontsStyles.textstyle16
                            .copyWith(color: AppColors.appNeutralColors800),
                      ),
                      const SizedBox(height: 16),
                      CustomPhoneNumberTextField(
                        tilteColor: AppColors.appNeutralColors400,
                        content: state is FetchProfileDataSuccess
                            ? state.profileDataModel.mobile
                            : "",
                        sympol: "",
                        onChanged: (value) {
                          setState(() {
                            value != ""
                                ? mobile = value
                                : mobile = state is FetchProfileDataSuccess
                                    ? state.profileDataModel.mobile
                                    : "";
                          });
                        },
                        onSubmited: (value) {
                          setState(() {
                            value != ""
                                ? mobile = value
                                : mobile = state is FetchProfileDataSuccess
                                    ? state.profileDataModel.mobile
                                    : "";
                          });
                        },
                      ),
                      Container(
                          constraints: const BoxConstraints(minHeight: 110)),
                      PersonalDetailButtonBlocConsumer(
                        bio: bio,
                        address: address,
                        mobile: mobile,
                        name: name,
                      )
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
