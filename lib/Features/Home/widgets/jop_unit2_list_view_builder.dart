import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/models/suggested_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_info_unit2.dart';

class JopUnite2ListViewbuilder extends StatelessWidget {
  JopUnite2ListViewbuilder({super.key});
  List<SuggestedJopModel> jopesInfo = [
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: jopesInfo.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: JopInfoUnite2(jopModel: jopesInfo[index]),
        );
      },
    );
  }
}