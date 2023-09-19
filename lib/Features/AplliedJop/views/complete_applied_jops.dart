import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/models/applied_jop_model.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/views/widgets/complete_applied_jops_view_body.dart';

class CompleteAppliedJops extends StatelessWidget {
  const CompleteAppliedJops({
    super.key,
    required this.jopdata,
  });
  final AppliedJopModel jopdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Applied Job",
      ),
      body: CompleteAppliedJopsBody(
        jopData: jopdata,
      ),
    );
  }
}
