import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/apply_section_title.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/choose_file_section_list_view_builder.dart';

class Step2Content extends StatelessWidget {
  const Step2Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const ApplySectionTitle(
          title: "Type of work",
          subTitle: "Fill in your bio data correctly",
        ),
        const SizedBox(height: 28),
        ChooseFileSectionListViewBuilder()
      ],
    );
  }
}
