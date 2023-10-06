import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/data/models/saved_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/widgets/saved_jop_unit.dart';

// ignore: must_be_immutable
class SavedJopListViewBuilderr extends StatelessWidget {
  SavedJopListViewBuilderr({super.key, required this.savedJops});

  final List<SavedJopModel> savedJops;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: savedJops.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
            child: SavedJopUnit(
              jopModel: savedJops[index],
            ),
          );
        },
      ),
    );
  }
}
