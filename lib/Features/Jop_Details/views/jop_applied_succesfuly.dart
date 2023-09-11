import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Home/views/home_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class JopAppliedSuccesfuly extends StatelessWidget {
  const JopAppliedSuccesfuly({super.key});
  static const id = "jopapplyedSuccesfuly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Apply Job",
        paddingTop: 10,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 121,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: CustomStatepage(
                stateImage: AppImages.jopApliedSeccesfultyicon,
                statetitle: "Your data has been successfully sent",
                stateSubtitle:
                    "You will get a message from our team, about the announcement of employee acceptance",
                spacebetweent: 12,
              ),
            ),
            const Spacer(),
            CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeView.id);
                },
                buttonName: "Back to home"),
            const SizedBox(
              height: 9,
            )
          ],
        ),
      )),
    );
  }
}
