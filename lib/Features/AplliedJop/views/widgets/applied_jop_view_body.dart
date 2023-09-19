import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_tap_par.dart';
import 'package:jobsque_jobfinder/Features/AplliedJop/views/widgets/applied_jop_list_view_builder.dart';

class AppliedJopViewBody extends StatelessWidget {
  const AppliedJopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(height: 32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomTapPar(
              tabs: [
                Text("Active", style: AppFontsStyles.textstyle14),
                Text("Rejected", style: AppFontsStyles.textstyle14)
              ],
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: TabBarView(
              children: [
                ActiveAppliedJopView(),
                Column(
                  children: [
                    SizedBox(height: 87),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: CustomStatepage(
                          stateImage: AppImages.noAppliedJopIcon,
                          statetitle: "No applications were rejected",
                          stateSubtitle:
                              "If there is an application that is rejected by the company it will appear here"),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ActiveAppliedJopView extends StatelessWidget {
  const ActiveAppliedJopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const CustomSectionBar(text: "3 Jobs"),
        const SizedBox(height: 24),
        AppliedJopListViewBuilder(),
      ],
    );
  }
}
