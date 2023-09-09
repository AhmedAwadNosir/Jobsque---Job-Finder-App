import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_Icon_containers.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_container.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/show_modal_bottom_sheet.dart';

class CustomSearchMessagePar extends StatelessWidget {
  const CustomSearchMessagePar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 267,
          child: CustomeSearchBar(hintText: "Search messages"),
        ),
        CircleIcons(
          icon: Iconsax.setting_4,
        )
      ],
    );
  }
}
