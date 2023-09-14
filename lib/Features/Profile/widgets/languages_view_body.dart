import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/languaes_list_view_builder.dart';

class LangaugesViewBody extends StatelessWidget {
  const LangaugesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [SizedBox(height: 48), LanguagesListViewBuilder()],
      ),
    );
  }
}
