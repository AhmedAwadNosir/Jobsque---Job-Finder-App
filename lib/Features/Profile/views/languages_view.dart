import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/languages_view_body.dart';

class LanguagesView extends StatelessWidget {
  const LanguagesView({super.key});
  static const id = "";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Language",
        paddingTop: 16,
      ),
      body: LangaugesViewBody(),
    );
  }
}
