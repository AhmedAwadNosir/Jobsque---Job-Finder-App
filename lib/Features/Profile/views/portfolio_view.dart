import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/portfolio_view_body.dart';

class PortFolioView extends StatelessWidget {
  const PortFolioView({super.key});
  static const id = "PortfolioView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        paddingTop: 16,
        title: "PortFolio",
      ),
      body: PortFolioViewbody(),
    );
  }
}
