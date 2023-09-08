import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_info_unit2.dart';

class SearchResultListViewBuilder extends StatelessWidget {
  SearchResultListViewBuilder({super.key});
  List<JopModel> jopesInfo = [
    JopModel(
      comunicationToolIcon: AppImages.twitterIcon,
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
    ),
    JopModel(
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
      comunicationToolIcon: AppImages.discordIcon,
    ),
    JopModel(
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
      comunicationToolIcon: AppImages.spectrumIcon,
    ),
    JopModel(
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
      comunicationToolIcon: AppImages.vKLogo,
    ),
    JopModel(
      jopTitle: "Product Designer",
      comunicationtoolname: "Zoom • United States",
      workType: "Fulltime",
      workNature: "Remote",
      jopSkill: "Design",
      salary: r"$15K",
      salaryTime: "/Month",
      comunicationToolIcon: AppImages.invisionIcon,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: jopesInfo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: JopInfoUnite2(jopModel: jopesInfo[index]),
            );
          },
        ),
      ),
    );
  }
}
