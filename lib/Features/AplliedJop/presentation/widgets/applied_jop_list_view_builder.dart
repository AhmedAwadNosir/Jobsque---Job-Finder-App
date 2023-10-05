import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/data/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/views/complete_applied_jops.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/presentation/widgets/applied_jop_unit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_recent_jops/fetch_recent_jops_cubit.dart';

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
    return BlocBuilder<FetchRecentJopsCubit, FetchRecentJopsState>(
      builder: (context, state) {
        if (state is FetchRecentJopsSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.jops.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      final currentJop = appliedJopData[index];
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return CompleteAppliedJops(jopdata: currentJop);
                        },
                      ));
                    },
                    child: AppliedJopUnit(
                      jopModel: state.jops[index],
                      isArcieved: false,
                      currentindex: 2,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FetchRecentJopsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
