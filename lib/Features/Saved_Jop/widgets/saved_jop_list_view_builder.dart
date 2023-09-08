import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/models/saved_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/widgets/saved_jop_unit.dart';

class SavedJopListViewBuilderr extends StatelessWidget {
  SavedJopListViewBuilderr({super.key});
  List<SavedJopModel> jopesData = [
    SavedJopModel(
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      comunicationToolIcon: AppImages.twitterIcon,
      savedDate: "Posted 2 days ago",
      savedtimestate: "Be an early applicant",
    ),
    SavedJopModel(
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      comunicationToolIcon: AppImages.vKLogo,
      savedDate: "Posted 2 days ago",
      savedtimestate: "Be an early applicant",
    ),
    SavedJopModel(
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      comunicationToolIcon: AppImages.spectrumIcon,
      savedDate: "Posted 2 days ago",
      savedtimestate: "Be an early applicant",
    ),
    SavedJopModel(
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      comunicationToolIcon: AppImages.discordIcon,
      savedDate: "Posted 2 days ago",
      savedtimestate: "Be an early applicant",
    ),
    SavedJopModel(
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      comunicationToolIcon: AppImages.invisionIcon,
      savedDate: "Posted 2 days ago",
      savedtimestate: "Be an early applicant",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: jopesData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
            child: SavedJopUnit(
              jopModel: jopesData[index],
            ),
          );
        },
      ),
    );
  }
}
