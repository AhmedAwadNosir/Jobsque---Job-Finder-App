import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/apply_jop_view_body.dart';

class ApplyJopView extends StatelessWidget {
  const ApplyJopView({super.key});
  static const id = "applyJopView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Apply Job",
        paddingTop: 10,
      ),
      body: SafeArea(child: ApplyJopViewBody()),
    );
  }
}
