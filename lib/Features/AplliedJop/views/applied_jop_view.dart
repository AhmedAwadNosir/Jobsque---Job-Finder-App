import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/views/widgets/applied_jop_view_body.dart';

class AppliedJopView extends StatelessWidget {
  const AppliedJopView({super.key});
  static const id = "AppliedJopView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Applied Job",
        paddingTop: 16,
      ),
      body: AppliedJopViewBody(),
    );
  }
}
