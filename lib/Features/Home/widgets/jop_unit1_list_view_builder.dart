import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/models/suggested_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_info_unite1.dart';

class JopUnite1ListViewbuilder extends StatelessWidget {
  JopUnite1ListViewbuilder({super.key});
  List<SuggestedJopModel> jopesInfo = [
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$12K-15K",
      salaryTime: "/Month",
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$12K-15K",
      salaryTime: "/Month",
      containerColor: AppColors.appNeutralColors100,
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$12K-15K",
      salaryTime: "/Month",
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$12K-15K",
      salaryTime: "/Month",
      containerColor: AppColors.appNeutralColors100,
    ),
    SuggestedJopModel(
      comunicationToolImage: AppImages.zoomIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$12K-15K",
      salaryTime: "/Month",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        itemCount: jopesInfo.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: JopInfoUnite1(jopModel: jopesInfo[index]),
          );
        },
      ),
    );
  }
}
