import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/popular_search_list_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/recent_search_list_view_builder.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';

class SearchViewEmpty extends StatelessWidget {
  const SearchViewEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        const CustomSectionBar(
          text: "Recent searches",
        ),
        const SizedBox(
          height: 20,
        ),
        RecentSearchListVeiwBuilder(),
        const CustomSectionBar(
          text: "Popular searches",
        ),
        const SizedBox(
          height: 20,
        ),
        PopularSearchListViewBuilder(),
      ],
    );
  }
}
