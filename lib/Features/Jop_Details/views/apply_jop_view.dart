import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/apply_jop_view_body.dart';

class ApplyJopView extends StatelessWidget {
  const ApplyJopView({super.key});
  static const id = "applyJopView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ApplyJopViewBody()),
    );
  }
}
