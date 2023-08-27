import 'package:flutter/material.dart';
import '../Widgets/work_location_view_body.dart';

class WorkLocationView extends StatelessWidget {
  const WorkLocationView({super.key});
  static const id = "Worklocationview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: WorkLocatinViewBody()),
    );
  }
}
