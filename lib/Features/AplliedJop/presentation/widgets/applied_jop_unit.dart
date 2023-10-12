import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/widgets/custom_steper_ui.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_features.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/apply_custom_step_label.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/custom_steper_widgets/custom_step_progress_icon.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step2_content_blob_builder.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_1_content.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/step_3_content.dart';

// ignore: must_be_immutable
class AppliedJopUnit extends StatefulWidget {
  AppliedJopUnit(
      {super.key,
      required this.jopModel,
      required this.isArcieved,
      required this.currentindex});
  final JopModel jopModel;
  bool isArcieved;
  int currentindex;
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
    int joplength = widget.jopModel.jopLocation.length - 1;
    int joplength1 = widget.jopModel.jopLocation.length;
    String jopLocation = widget.jopModel.jopLocation;
    return Column(
      children: [
        JopDataUnite(
          companyImage: widget.jopModel.jopImage,
          jopTitle: widget.jopModel.jopName,
          optionICon: widget.isArcieved == true
              ? CustomFlutterIcons.archiveMinus
              : Iconsax.archive_minus,
          iconSize: widget.isArcieved == true ? 28 : 24,
          jopComunicationName:
              "${widget.jopModel.companyName} • ${widget.jopModel.jopLocation.substring(joplength - 5, jopLocation[joplength] == "." ? joplength : joplength1)}",
          iconColor: widget.isArcieved == true
              ? AppColors.appPrimaryColors500
              : AppColors.appNeutralColors900,
          onTap: () {
            setState(() {
              widget.isArcieved = !widget.isArcieved;
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
                workType: widget.jopModel.jopTimeType,
                workNature: widget.jopModel.jopType,
              ),
            ),
            Text(
              "Posted 2 days ago",
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
              currentStep: widget.currentindex,
              customSteps: getsteps(),
              onStepTapped: (step) {
                setState(() {
                  widget.currentindex = step;
                  if (controller.hasClients) {
                    controller.jumpToPage(widget.currentindex);
                  }
                });
              },
              onStepContinue: () {
                setState(() {
                  widget.currentindex++;
                  if (controller.hasClients) {
                    controller.jumpToPage(widget.currentindex);
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
            isActive: widget.currentindex >= 0,
          ),
          isActive: widget.currentindex >= 0,
          state: widget.currentindex > 0
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
            state: widget.currentindex > 1
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: widget.currentindex >= 1,
            label: ApplyCustomStepsLabel(
              label: "Type of work",
              isActive: widget.currentindex >= 1,
            ),
            content: const Step2ContentBlocBuilder()),
        CustomStep(
            state: widget.currentindex > 2
                ? CustomStepState.complete
                : CustomStepState.indexed,
            isActive: widget.currentindex >= 2,
            label: ApplyCustomStepsLabel(
              label: "Uplode portfolio",
              isActive: widget.currentindex == 2,
            ),
            content: const Step3Content()),
      ];
}
