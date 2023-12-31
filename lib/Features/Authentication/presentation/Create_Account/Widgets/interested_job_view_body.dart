import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/work_location_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/job_tittle_box.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';

// ignore: must_be_immutable
class IntestedJobViewBody extends StatelessWidget {
  IntestedJobViewBody({
    super.key,
    this.userName,
    this.email,
    this.registerMethode,
    this.password,
  });
  String? userName;
  String? email;
  String? registerMethode;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.95,
          child: Column(
            children: [
              const SizedBox(height: 20),
              PageInitialinfo(
                spacebetween: 12,
                pagegole: "What type of work are you interested in?",
                pagegoledefination:
                    "Tell us what you’re interested in so we can customise the app for your needs.",
                pagegoleStyle: AppFontsStyles.textstyle24.copyWith(
                  fontFamily: textFamilyMedium,
                  height: 1.4,
                  color: AppColors.appNeutralColors900,
                ),
              ),
              const SizedBox(height: 36),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      JobTitleBox(
                        jobIcon: Iconsax.bezier,
                        jobtitle: "UI/UX Designer",
                      ),
                      SizedBox(height: 20),
                      JobTitleBox(
                        jobIcon: Iconsax.code,
                        jobtitle: "Developer",
                      ),
                      SizedBox(height: 20),
                      JobTitleBox(
                        jobIcon: Iconsax.monitor_mobbile,
                        jobtitle: "Information Technology",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      JobTitleBox(
                        jobIcon: Iconsax.pen_tool,
                        jobtitle: "Ilustrator Designer",
                      ),
                      SizedBox(height: 20),
                      JobTitleBox(
                        jobIcon: Iconsax.graph,
                        jobtitle: "Management",
                      ),
                      SizedBox(height: 20),
                      JobTitleBox(
                        jobIcon: Iconsax.cloud_add,
                        jobtitle: "Research and Analytics",
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              CustomButton(
                  onPressed: () {
                    if (JobTitleBox.joptitlepase.isNotEmpty) {
                      context.pushreplacmentex(
                        WorkLocationView(
                          userName: userName,
                          email: email,
                          registerMethode: registerMethode,
                          jopTitle: JobTitleBox.joptitlepase,
                          password: password,
                        ),
                      );
                    } else {
                      log(JobTitleBox.joptitlepase.toString());
                      showSnackBar(
                          "Please choose work that you are intersted it ",
                          context);
                    }
                  },
                  buttonName: "Next"),
              const SizedBox(height: 9),
            ],
          ),
        ),
      ),
    );
  }
}
