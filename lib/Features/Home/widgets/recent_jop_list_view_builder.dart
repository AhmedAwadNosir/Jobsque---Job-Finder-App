import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/recent_jop_unit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/views/jop_details_view.dart';

class RecentJopListViewBuilder extends StatelessWidget {
  RecentJopListViewBuilder({super.key});
  List<JopModel> jopesInfo = [
    JopModel(
      jopImage: AppImages.zoomIcon,
      jopName: "Product Designer",
      jopTimeType: "Fulltime",
      jopType: "Remote",
      jopLevel: "Design",
      salary: r"$15K",
      aboutCompany: "",
      companyEmail: "",
      companyName: "",
      companyWebsite: "",
      jopDescription: "",
      jopId: 1,
      jopLocation: "",
      jopSkills: "",
    ),
    JopModel(
      jopImage: AppImages.zoomIcon,
      jopName: "Product Designer",
      jopTimeType: "Fulltime",
      jopType: "Remote",
      jopLevel: "Design",
      salary: r"$15K",
      aboutCompany: "",
      companyEmail: "",
      companyName: "",
      companyWebsite: "",
      jopDescription: "",
      jopId: 3,
      jopLocation: "",
      jopSkills: "",
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
            child: RecentJopUnit(
              jopModel: jopesInfo[index],
            ),
          ),
        );
      },
    );
  }
}
