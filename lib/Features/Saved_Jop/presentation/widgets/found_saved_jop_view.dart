import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/data/models/saved_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/widgets/saved_jop_list_view_builder.dart';

class FoundSavedJopsView extends StatelessWidget {
  const FoundSavedJopsView({super.key, required this.savedJops});
  final List<SavedJopModel> savedJops;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const CustomSectionBar(
          text: "12 Job Saved",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25),
        SavedJopListViewBuilderr(savedJops: savedJops),
      ],
    );
  }
}
