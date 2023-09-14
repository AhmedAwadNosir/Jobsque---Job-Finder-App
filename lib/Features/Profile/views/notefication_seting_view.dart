import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/notefication_seting_view_body.dart';

class NoteficationSetingView extends StatelessWidget {
  const NoteficationSetingView({super.key});
  static const id = "noteficationsetings";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
        paddingTop: 16,
      ),
      body: NoteficationSetingViewBody(),
    );
  }
}
