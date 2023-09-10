import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_Icon_containers.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/show_modal_bottom_sheet.dart';

class CustomSearchMessagePar extends StatelessWidget {
  const CustomSearchMessagePar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 267,
          child: CustomeSearchBar(hintText: "Search messages"),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) =>
                  const SingleChildScrollView(child: ShowModalBottomSheet()),
            );
          },
          child: const CircleIcons(
            icon: Iconsax.setting_4,
          ),
        )
      ],
    );
  }
}
