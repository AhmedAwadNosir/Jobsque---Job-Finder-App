import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_bottom_sheet_button.dart';

class SavedJopBottomSheet extends StatelessWidget {
  const SavedJopBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Image.asset(AppImages.vector),
          const SizedBox(height: 24),
          CustomBottomSheetButton(
            buttonName: "Apply Job",
            prefixIcon: Iconsax.directbox_notif,
            onTap: () {},
          ),
          const SizedBox(height: 12),
          CustomBottomSheetButton(
            buttonName: "Share via...",
            prefixIcon: Iconsax.export_1,
            onTap: () {},
          ),
          const SizedBox(height: 12),
          CustomBottomSheetButton(
            buttonName: "Cancel save",
            prefixIcon: Iconsax.archive_minus,
            onTap: () {},
          ),
          const SizedBox(height: 64),
        ],
      ),
    );
  }
}
