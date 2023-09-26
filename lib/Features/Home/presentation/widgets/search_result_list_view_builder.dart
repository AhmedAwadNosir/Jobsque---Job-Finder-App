import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/recent_jop_unit.dart';


class SearchResultListViewBuilder extends StatelessWidget {
  const SearchResultListViewBuilder({super.key, required this.jops});
  final List<JopModel> jops;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: jops.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: RecentJopUnit(jopModel: jops[index]),
            );
          },
        ),
      ),
    );
  }
}
