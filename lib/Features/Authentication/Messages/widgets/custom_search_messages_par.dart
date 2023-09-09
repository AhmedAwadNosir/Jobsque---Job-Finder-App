import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Messages/widgets/show_modal_bottom_sheet.dart';

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
        Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: AppColors.appNeutralColors300),
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: ShowModalBottomSheet(),
                    );
                  },
                );
              },
              child: const Icon(Iconsax.setting_4),
            ),
          ),
        )
      ],
    );
  }
}

