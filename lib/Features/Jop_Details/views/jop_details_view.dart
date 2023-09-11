import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Home/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/jop_details_view_body.dart';

class JopDetailsView extends StatelessWidget {
  const JopDetailsView({super.key, required this.jopModel});
  final JopModel jopModel;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const CustomAppBar(
          paddingTop: 16,
          title: "Job Detail",
          rightpart: Icon(
            Iconsax.archive_minus5,
            color: AppColors.appPrimaryColors500,
          ),
        ),
        body: SafeArea(
            child: JopDetailsViewBody(
          jopModel: jopModel,
        )),
      ),
    );
  }
}
