import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_tap_par.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/user_data_model.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/custom_countries_widget.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/success_account_view_body.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/Register/register_cubit.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/edit_profile_data/edit_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';
import 'job_location_container.dart';
import 'work_location_toggle_button.dart';

// ignore: must_be_immutable
class WorkLocatinViewBody extends StatefulWidget {
  WorkLocatinViewBody({
    super.key,
    this.userName,
    this.email,
    this.jopTitle,
    this.registerMethode,
    this.password,
  });
  String? userName;
  String? email;
  List<String>? jopTitle;
  String? registerMethode;
  String? password;
  @override
  State<WorkLocatinViewBody> createState() => _WorkLocatinViewBodyState();
}

class _WorkLocatinViewBodyState extends State<WorkLocatinViewBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                PageInitialinfo(
                  spacebetween: 12,
                  pagegole: "Where are you prefefred Location?",
                  pagegoledefination:
                      "Let us know, where is the work location you want at this time, so we can adjust it.",
                  pagegoleStyle: AppFontsStyles.textstyle24.copyWith(
                    fontFamily: textFamilyMedium,
                    height: 1.4,
                    color: AppColors.appNeutralColors900,
                  ),
                ),
                const SizedBox(height: 32),
                const CustomTapPar(tabs: [
                  Text("Work From Office", style: AppFontsStyles.textstyle14),
                  Text(
                    "Remote Work",
                    style: AppFontsStyles.textstyle14,
                  )
                ]),
                const SizedBox(height: 27),
                Text(
                  "Select the country you want for your job",
                  style: AppFontsStyles.textstyle16
                      .copyWith(color: const Color(0xff737379)),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: const TabBarView(
                      children: [
                        CustomCountriesWidget(workLocationtype: workFromOffice),
                        CustomCountriesWidget(workLocationtype: remoteWork)
                      ],
                    )),
                const Spacer(),
                Center(
                  child: BlocListener<RegisterCubit, RegisterState>(
                    listener: (context, State) {
                      if (State is RegisterSuccess) {
                        showSnackBar(
                            "Registeration Completed successfully", context);
                        Navigator.pushReplacementNamed(
                            context, SuccessAcountIlstrationView.id);
                      }
                      if (State is RegisterFailure) {
                        showSnackBar(State.errorMessaage, context);
                      }
                    },
                    child: CustomButton(
                        onPressed: () async {
                          if (JopLocatinContainer.remoteWork.isNotEmpty &&
                              JopLocatinContainer.workFromOffice.isNotEmpty) {
                            if (widget.registerMethode ==
                                emailAndPasswordmethode) {
                              log(widget.userName!);
                              log(widget.email!);
                              log(widget.password!);
                              BlocProvider.of<RegisterCubit>(context)
                                  .registerWithEmailAndPassword(
                                userModel: UserModel(
                                    userName: widget.userName!,
                                    userPhoto:
                                        "lib/Core/Utils/assets/images/profile-pic.png",
                                    email: widget.email!,
                                    wantedJop: widget.jopTitle!,
                                    workLocation:
                                        JopLocatinContainer.workFromOffice,
                                    workNature:
                                        WorkLocationToggleButton.worknature),
                                password: widget.password!,
                              );
                            } else if (widget.registerMethode ==
                                googleMethode) {
                              BlocProvider.of<RegisterCubit>(context)
                                  .signUpWithGoogle(
                                userModel: UserModel(
                                    email: widget.email,
                                    wantedJop: widget.jopTitle!,
                                    workLocation:
                                        JopLocatinContainer.workFromOffice,
                                    workNature:
                                        WorkLocationToggleButton.worknature),
                              );
                            } else if (widget.registerMethode ==
                                facebookMethode) {
                              BlocProvider.of<RegisterCubit>(context)
                                  .signUpWithFacebook(
                                userModel: UserModel(
                                    email: widget.email,
                                    wantedJop: widget.jopTitle!,
                                    workLocation:
                                        JopLocatinContainer.workFromOffice,
                                    workNature:
                                        WorkLocationToggleButton.worknature),
                              );
                            } else {
                              BlocProvider.of<EditProfileDataCubit>(context)
                                  .editProfileData(
                                      registertokenkey:
                                          await SharedPreferencesUtil.getString(
                                              registerTokenkey),
                                      profileDataModel: ProfileDataModel(
                                        interstedWork: widget.jopTitle?[0],
                                        offlinePlace: JopLocatinContainer
                                            .workFromOffice[0],
                                        remotePlace:
                                            JopLocatinContainer.remoteWork[0],
                                      ));
                            }
                          } else {
                            showSnackBar(
                                "please choose your offline Place and your remote Place ",
                                context);
                          }
                        },
                        buttonName: "Next"),
                  ),
                ),
                const SizedBox(height: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
