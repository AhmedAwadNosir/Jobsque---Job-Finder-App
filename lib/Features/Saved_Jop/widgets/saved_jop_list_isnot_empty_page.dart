import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/widgets/saved_jop_list_view_builder.dart';

class SavedJopListNotEmpty extends StatelessWidget {
  const SavedJopListNotEmpty({super.key});

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
        SavedJopListViewBuilderr(),
      ],
    );
  }
}
