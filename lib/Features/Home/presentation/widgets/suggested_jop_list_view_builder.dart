import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/suggested_Jop_unite.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/views/jop_details_view.dart';

class SuggestedJopListViewBuilder extends StatelessWidget {
  SuggestedJopListViewBuilder({super.key});
  List<JopModel> jopesInfo = [
    JopModel(
      jopImage: AppImages.zoomIcon,
      jopName: "Product Designer",
      jopTimeType: "Fulltime",
      jopType: "Remote",
      jopLevel: "3",
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
      jopLevel: "2",
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
    return SizedBox(
      height: 190,
      child: ListView.builder(
        itemCount: jopesInfo.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                var currentJop = jopesInfo[index];
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return JopDetailsView(jopModel: currentJop);
                  },
                ));
              },
              child: SuggestedJopUnit(
                jopModel: jopesInfo[index],
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
