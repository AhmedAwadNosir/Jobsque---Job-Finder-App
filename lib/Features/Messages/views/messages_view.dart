import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/message_list_empty_page.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/messages_list_not_empty_page.dart';

class MessagesView extends StatelessWidget {
  MessagesView({super.key});
  bool isEmpty = false;
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
          "Messsages",
          style: AppFontsStyles.textstyle20.copyWith(
              color: AppColors.appNeutralColors900,
              fontFamily: textFamilyMedium),
        ),
      ),
      body: SafeArea(
          child: isEmpty
              ? const MessagesListEmptyPage()
              : const MessagesListNotEmpty()),
    );
  }
}
