import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/choose_file_section.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';

// ignore: must_be_immutable
class ChooseFileSectionListViewBuilder extends StatelessWidget {
  const ChooseFileSectionListViewBuilder({super.key, required this.cvFiles});
  final List< CvFileModel> cvFiles;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
              child: ListView.builder(
                itemCount: cvFiles.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ChooseFileSection(
                    cvFileModel: cvFiles[index],
                  ),
                ),
              ),
            );
          }
}
