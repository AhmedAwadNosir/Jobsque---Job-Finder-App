import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Notefication/widgets/notefication_list_empty_page.dart';
import 'package:jobsque_jobfinder/Features/Notefication/widgets/notefication_list_not_empty_page.dart';

class NoteficationView extends StatelessWidget {
  NoteficationView({super.key});
  static const id = "noteficationveiw";
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Iconsax.arrow_left)),
        centerTitle: true,
        title: Text(
          "Notification",
          style: AppFontsStyles.textstyle20.copyWith(
              color: AppColors.appNeutralColors900,
              fontFamily: textFamilyMedium),
        ),
      ),
      body: isEmpty
          ? const SafeArea(child: NoteficationListEmptyPage())
          : const SafeArea(child: NoteficationListNotEmptyPage()),
    );
  }
}
