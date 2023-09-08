import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/filter_option_list_view.dart';

class FaildSearchView extends StatelessWidget {
  const FaildSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 22,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24),
          child: FilterOptionListView(),
        ),
        SizedBox(
          height: 116,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 51),
          child: CustomStatepage(
            stateImage: AppImages.searchfaild,
            statetitle: "Search not found",
            stateSubtitle:
                "Try searching with different keywords so we can show you",
          ),
        )
      ],
    );
  }
}
