import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/views/complete_applied_jops.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/views/widgets/applied_jop_unit.dart';

class AppliedJopListViewBuilder extends StatefulWidget {
  const AppliedJopListViewBuilder({super.key});

  @override
  State<AppliedJopListViewBuilder> createState() =>
      _AppliedJopListViewBuilderState();
}

class _AppliedJopListViewBuilderState extends State<AppliedJopListViewBuilder> {
  List<AppliedJopModel> appliedJopData = [
    AppliedJopModel(
      comunicationToolIcon: AppImages.spectrumIcon,
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      workType: "Fulltime",
      workNature: "Remote",
      isArchived: true,
      postTime: "Posted 2 days ago",
      currentIndex: 1,
    ),
    AppliedJopModel(
      comunicationToolIcon: AppImages.discordIcon,
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      workType: "Fulltime",
      workNature: "Remote",
      isArchived: true,
      postTime: "Posted 2 days ago",
      currentIndex: 1,
    ),
    AppliedJopModel(
      comunicationToolIcon: AppImages.invisionIcon,
      jopTitle: "Senior UI Designer",
      comunicationtoolname: "Twitter • Jakarta, Indonesia",
      workType: "Fulltime",
      workNature: "Remote",
      isArchived: false,
      postTime: "Posted 2 days ago",
      currentIndex: 2,
    ),
    AppliedJopModel(
        comunicationToolIcon: AppImages.invisionIcon,
        jopTitle: "Senior UI Designer",
        comunicationtoolname: "Twitter • Jakarta, Indonesia",
        workType: "Fulltime",
        workNature: "Remote",
        isArchived: false,
        postTime: "Posted 2 days ago",
        currentIndex: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: appliedJopData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
          child: GestureDetector(
              onTap: () {
                final currentJop = appliedJopData[index];
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return CompleteAppliedJops(jopdata: currentJop);
                  },
                ));
              },
              child: AppliedJopUnit(jopModel: appliedJopData[index])),
        );
      },
    ));
  }
}
