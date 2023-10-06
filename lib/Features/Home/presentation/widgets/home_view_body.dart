import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/views/search_view.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_section_bar.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/recent_jop_list_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/suggested_jop_list_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/twitter_submitted.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/welcoming_new_user.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomingNewUser(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 28,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomeSearchBar(
              hintText: "Search",
              searchBarenabeld: false,
              ontap: () {
                Navigator.pushNamed(context, SearchView.id);
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(
            child: TwitterSubmited(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: JopSectionBar(
              jopslistname: "Suggested Job",
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: SuggestedJopListViewBuilder(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: JopSectionBar(
              jopslistname: "Recent Job",
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const SliverToBoxAdapter(
            child: RecentJopListViewBuilder(),
          )
        ],
      ),
    );
  }
}
