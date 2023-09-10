import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_Icon_containers.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';

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
