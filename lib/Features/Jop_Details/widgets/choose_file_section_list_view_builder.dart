import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/models/jop_file_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/choose_file_section.dart';

class ChooseFileSectionListViewBuilder extends StatelessWidget {
  ChooseFileSectionListViewBuilder({super.key});
  List<JopFileModel> jopfiles = [
    JopFileModel(
      jopFileName: "Senior UX Designer",
      jopCvFileName: "CV.pdf",
      jopPortfolioFileName: "Portfolio.pdf",
    ),
    JopFileModel(
      jopFileName: "Senior UX Designer",
      jopCvFileName: "CV.pdf",
      jopPortfolioFileName: "Portfolio.pdf",
    ),
    JopFileModel(
      jopFileName: "Senior UX Designer",
      jopCvFileName: "CV.pdf",
      jopPortfolioFileName: "Portfolio.pdf",
    ),
    JopFileModel(
      jopFileName: "Senior UX Designer",
      jopCvFileName: "CV.pdf",
      jopPortfolioFileName: "Portfolio.pdf",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: jopfiles.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ChooseFileSection(
            jopFileModel: jopfiles[index],
          ),
        ),
      ),
    );
  }
}
