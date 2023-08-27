import 'package:flutter/material.dart';

import '../Widgets/job_tittle_view_body.dart';

class JobTitleView extends StatelessWidget {
  const JobTitleView({super.key});
  static const id = "jobtitleview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: JobTittleViewBody()),
    );
  }
}
