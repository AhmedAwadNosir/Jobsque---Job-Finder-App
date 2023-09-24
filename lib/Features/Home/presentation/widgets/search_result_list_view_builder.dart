import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/recent_jop_unit.dart';

class SearchResultListViewBuilder extends StatelessWidget {
  SearchResultListViewBuilder({super.key});
  List<JopModel> jopesInfo = [
    JopModel(
      jopImage: AppImages.zoomIcon,
      jopName: "Product Designer",
      jopTimeType: "Fulltime",
      jopType: "Remote",
      jopLevel: "Design",
      salary: r"$12K-15K",
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
      salary: r"$12K-15K",
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: jopesInfo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: RecentJopUnit(jopModel: jopesInfo[index]),
            );
          },
        ),
      ),
    );
  }
}
