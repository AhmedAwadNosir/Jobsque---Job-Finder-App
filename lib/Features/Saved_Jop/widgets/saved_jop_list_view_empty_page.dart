import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';

class SavedJopListEmptyPge extends StatelessWidget {
  const SavedJopListEmptyPge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 165),
          CustomStatepage(
              stateImage: AppImages.savedICon,
              statetitle: "Nothing has been saved yet",
              stateSubtitle: "Press the star icon on the job you want to save.")
        ],
      ),
    );
  }
}
