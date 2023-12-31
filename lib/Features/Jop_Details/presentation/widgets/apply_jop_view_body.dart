import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/models/apply_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/choose_file_section.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/complete_data_instraction.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/apply_custom_step_label.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step2_content_blob_builder.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_1_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step_progress_icon.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_stepper.dart';

import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_3_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/appLy_jop/apply_jop_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApplyJopViewBody extends StatefulWidget {
  const ApplyJopViewBody({super.key, required this.jopId});
  final String jopId;
  @override
  State<ApplyJopViewBody> createState() => _ApplyJopViewBodyState();
}

class _ApplyJopViewBodyState extends State<ApplyJopViewBody> {
  int currentIndex = 0;
  String? userName;
  String? email;
  String? mobile;
  late PageController controler;

  @override
  void initState() {
    controler = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProfileDataCubit, FetchProfileDataState>(
      builder: (context, state) {
        if (state is FetchProfileDataSuccess) {
          if (state.profileDataModel.mobile == "") {
            return const CompleteYourDataInstraction(
              title: "Profile Data Not Completed",
              subTitle: "Please go to complete your personal data",
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: 34,
                  ),
                  Expanded(
                      child: CustomStepper(
                          lastStepControl: () async {
                            var box = Hive.box<CvFileModel>(otherCvsFilebox);
                            List<CvFileModel> cvfiles = box.values.toList();

                            log(userName ?? state.profileDataModel.userName!);
                            log(email ?? state.profileDataModel.email!);
                            log(mobile ?? state.profileDataModel.mobile!);
                            log(cvfiles[0].cvFilePath);
                            log(ChooseFileSection.choosenFilePath);
                            log(widget.jopId);
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            log(prefs.getInt(userId).toString());
                            if (ChooseFileSection.choosenFilePath == '') {
                              showSnackBar(
                                  "please Go Back and choose cv File", context);
                            } else if (cvfiles.isEmpty) {
                              showSnackBar(
                                  "please upload another file", context);
                            } else {
                              BlocProvider.of<ApplyJopCubit>(context).applyJop(
                                  applyModal: ApplyJopModel(
                                      cvFilePath:
                                          ChooseFileSection.choosenFilePath,
                                      userName: userName ??
                                          state.profileDataModel.userName!,
                                      email: email ??
                                          state.profileDataModel.email!,
                                      mobile: mobile ??
                                          state.profileDataModel.mobile!,
                                      workType: "full",
                                      otherFilePath: cvfiles[0].cvFilePath,
                                      jopId: widget.jopId,
                                      userId: prefs.getInt(userId).toString()));
                            }
                          },
                          currentStep: currentIndex,
                          customSteps: getsteps(),
                          onStepTapped: (step) {
                            setState(() {
                              currentIndex = step;
                              if (controler.hasClients) {
                                controler.jumpToPage(currentIndex);
                              }
                            });
                          },
                          onStepContinue: () {
                            setState(() {
                              currentIndex++;
                              if (controler.hasClients) {
                                controler.jumpToPage(currentIndex);
                              }
                            });
                          },
                          pageController: controler))
                ],
              ),
            );
          }
        } else if (state is FetchProfileDataFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  List<CustomStep> getsteps() => [
        CustomStep(
          label: ApplyCustomStepsLabel(
            label: "Biodata",
            isActive: currentIndex >= 0,
          ),
          isActive: currentIndex >= 0,
          state: currentIndex > 0
              ? CustomStepState.complete
              : CustomStepState.indexed,
          content: Step1Content(
            passUserName: (value) {
              setState(() {
                if (value == "") {
                  userName = null;
                } else {
                  userName = value;
                }
              });
            },
            passemail: (value) {
              setState(() {
                if (value == "") {
                  email = null;
                } else {
                  email = value;
                }
              });
            },
            passmobile: (value) {
              setState(() {
                if (value == "") {
                  mobile = null;
                } else {
                  mobile = value;
                }
              });
            },
          ),
        ),
        CustomStep(
            state: currentIndex > 1
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: currentIndex >= 1,
            label: ApplyCustomStepsLabel(
              label: "Type of work",
              isActive: currentIndex >= 1,
            ),
            content: const Step2ContentBlocBuilder()),
        CustomStep(
            state: currentIndex > 2
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: currentIndex >= 2,
            label: ApplyCustomStepsLabel(
              label: "Uplode portfolio",
              isActive: currentIndex == 2,
            ),
            content: const Step3Content()),
      ];
}
