import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/help_center_view_body.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});
  static const id = "HelpCenterView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Help Center",
        paddingTop: 16,
      ),
      body: HelpCenterViewBody(),
    );
  }
}
