import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/data/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/models/apply_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/choose_file_section.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/apply_custom_step_label.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step_progress_icon.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_stepper.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step2_content_blob_builder.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_1_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_3_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/states_manager/appLy_jop/apply_jop_cubit.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';

class CompleteAppliedJopsBody extends StatefulWidget {
  const CompleteAppliedJopsBody({
    super.key,
    required this.jopData,
  });
  final AppliedJopModel jopData;

  @override
  State<CompleteAppliedJopsBody> createState() =>
      _CompleteAppliedJopsBodyState();
}

class _CompleteAppliedJopsBodyState extends State<CompleteAppliedJopsBody> {
  late PageController _controller;
  late String userName;
  late String email;
  late String mobile;
  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 48,
            width: 48,
            child: Image.asset(widget.jopData.comunicationToolIcon,
                fit: BoxFit.fill),
          ),
          const SizedBox(height: 12),
          CustomText20Style(title: widget.jopData.jopTitle),
          Text(
            widget.jopData.comunicationtoolname,
            style: AppFontsStyles.textstyle14
                .copyWith(color: AppColors.appNeutralColors700),
          ),
          Expanded(
              child: CustomStepper(
                  lastStepControl: () async {
                    var box = Hive.box<CvFileModel>(otherCvsFilebox);
                    List<CvFileModel> cvfiles = box.values.toList();
                    BlocProvider.of<ApplyJopCubit>(context).applyJop(
                        applyModal: ApplyJopModel(
                            cvFilePath: ChooseFileSection.choosenFilePath,
                            userName: userName,
                            email: email,
                            mobile: mobile,
                            workType: "full",
                            otherFilePath: cvfiles[0].cvFilePath,
                            jopId: "4",
                            userId:
                                await SharedPreferencesUtil.getString(userId)));
                  },
                  currentStep: currentIndex,
                  customSteps: getsteps(),
                  onStepTapped: (step) {
                    setState(() {
                      currentIndex = step;
                      if (_controller.hasClients) {
                        _controller.jumpToPage(currentIndex);
                      }
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      currentIndex++;
                      if (_controller.hasClients) {
                        _controller.jumpToPage(currentIndex);
                      }
                    });
                  },
                  pageController: _controller))
        ],
      ),
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
                userName = value;
              });
            },
            passemail: (value) {
              setState(() {
                email = value;
              });
            },
            passmobile: (value) {
              setState(() {
                mobile = value;
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
