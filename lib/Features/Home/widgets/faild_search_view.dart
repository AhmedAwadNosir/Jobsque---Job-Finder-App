import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/filter_option_list_view.dart';

class FaildSearchView extends StatelessWidget {
  const FaildSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: FilterOptionListView(),
        ),
        const SizedBox(
          height: 116,
        ),
        Image.asset(AppImages.searchfaild),
        const SizedBox(
          height: 24,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 51),
          child: PageInitialinfo(
            pagegole: "Search not found",
            pagegoledefination:
                "Try searching with different keywords so we can show you",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
