import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/data/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/widgets/custom_steper_ui.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_features.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/apply_custom_step_label.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step_progress_icon.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step2_content_blob_builder.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_1_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_3_content.dart';

class AppliedJopUnit extends StatefulWidget {
  const AppliedJopUnit({super.key, required this.jopModel});
  final AppliedJopModel jopModel;

  @override
  State<AppliedJopUnit> createState() => _AppliedJopUnitState();
}

class _AppliedJopUnitState extends State<AppliedJopUnit> {
  get currentIndex => null;
  late PageController controller;
   late String userName;
  late String email;
  late String mobile;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JopDataUnite(
          companyImage: widget.jopModel.comunicationToolIcon,
          jopTitle: widget.jopModel.jopTitle,
          optionICon: widget.jopModel.isArchived == true
              ? CustomFlutterIcons.archiveMinus
              : Iconsax.archive_minus,
          iconSize: widget.jopModel.isArchived == true ? 28 : 24,
          jopComunicationName: widget.jopModel.comunicationtoolname,
          iconColor: widget.jopModel.isArchived == true
              ? AppColors.appPrimaryColors500
              : AppColors.appNeutralColors900,
          onTap: () {
            setState(() {
              widget.jopModel.isArchived = !widget.jopModel.isArchived;
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: JopFeatures(
                workType: widget.jopModel.workType,
                workNature: widget.jopModel.workNature,
              ),
            ),
            Text(
              widget.jopModel.postTime,
              style: AppFontsStyles.textstyle12
                  .copyWith(color: AppColors.appNeutralColors700),
            )
          ],
        ),
        const SizedBox(height: 12),
        Container(
          height: 98,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.appNeutralColors300),
              borderRadius: BorderRadius.circular(8)),
          child: CustomStepperUi(
              currentStep: widget.jopModel.currentIndex,
              customSteps: getsteps(),
              onStepTapped: (step) {
                setState(() {
                  widget.jopModel.currentIndex = step;
                  if (controller.hasClients) {
                    controller.jumpToPage(currentIndex);
                  }
                });
              },
              onStepContinue: () {
                setState(() {
                  widget.jopModel.currentIndex++;
                  if (controller.hasClients) {
                    controller.jumpToPage(currentIndex);
                  }
                });
              },
              pageController: controller),
        ),
        const SizedBox(height: 12),
        const Divider(thickness: 1, color: AppColors.appNeutralColors200),
      ],
    );
  }

  List<CustomStep> getsteps() => [
        CustomStep(
          label: ApplyCustomStepsLabel(
            label: "Biodata",
            isActive: widget.jopModel.currentIndex >= 0,
          ),
          isActive: widget.jopModel.currentIndex >= 0,
          state: widget.jopModel.currentIndex > 0
              ? CustomStepState.complete
              : CustomStepState.indexed,
          content:  Step1Content(
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
            state: widget.jopModel.currentIndex > 1
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: widget.jopModel.currentIndex >= 1,
            label: ApplyCustomStepsLabel(
              label: "Type of work",
              isActive: widget.jopModel.currentIndex >= 1,
            ),
            content: const Step2ContentBlocBuilder()),
        CustomStep(
            state: widget.jopModel.currentIndex > 2
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: widget.jopModel.currentIndex >= 2,
            label: ApplyCustomStepsLabel(
              label: "Uplode portfolio",
              isActive: widget.jopModel.currentIndex == 2,
            ),
            content: const Step3Content()),
      ];
}
