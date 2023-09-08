import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_info_unit2.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/views/jop_details_view.dart';

class JopUnite2ListViewbuilder extends StatelessWidget {
  JopUnite2ListViewbuilder({super.key});
  List<JopModel> jopesInfo = [
    JopModel(
      comunicationToolIcon: AppImages.twitterIcon,
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
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
    return ListView.builder(
      shrinkWrap: true,
      itemCount: jopesInfo.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              var currentJop = jopesInfo[index];
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return JopDetailsView(jopModel: currentJop);
                },
              ));
            },
            child: JopInfoUnite2(
              jopModel: jopesInfo[index],
            ),
          ),
        );
      },
    );
  }
}
