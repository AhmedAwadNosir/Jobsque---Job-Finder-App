import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/search_history_unit.dart';


// ignore: must_be_immutable
class PopularSearchListViewBuilder extends StatelessWidget {
  PopularSearchListViewBuilder({super.key});
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
    return Expanded(
      child: ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return SearchHistoryUnit(
              searchName: recentSearch[index],
              prefixIcon: Iconsax.search_status,
              suffixICon: Iconsax.arrow_circle_right,
              suffixIconColor: AppColors.appPrimaryColors500);
        },
      ),
    );
  }
}
