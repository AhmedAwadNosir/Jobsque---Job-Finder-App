import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/search_history_unit.dart';

class RecentSearchListVeiwBuilder extends StatelessWidget {
  RecentSearchListVeiwBuilder({super.key});
  List<String> recentSearch = [
    "Product Designer",
    "Product Designer",
    "Project Manager",
    "UI/UX Designer",
    "Project Manager",
    "UI/UX Designer",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.33,
      child: ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return SearchHistoryUnit(
              searchName: recentSearch[index],
              prefixIcon: Iconsax.clock,
              suffixICon: Iconsax.close_circle,
              suffixIconColor: AppColors.appInDangerColors500);
        },
      ),
    );
  }
}
