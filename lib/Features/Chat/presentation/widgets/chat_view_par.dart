import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_bottom_sheet_button.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class ChatViewBar extends StatelessWidget {
  const ChatViewBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Iconsax.arrow_left),
        const SizedBox(width: 20),
        Image.asset(AppImages.circleTwiterIcon),
        const SizedBox(width: 12),
        const CustomText16Style(title: "Twitter"),
        const Spacer(),
        IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 12),
                          Image.asset(AppImages.vector),
                          const SizedBox(
                            height: 24,
                          ),
                          CustomBottomSheetButton(
                            buttonName: "Visit job post",
                            prefixIcon: Iconsax.briefcase,
                            onTap: () {},
                          ),
                          const SizedBox(height: 12),
                          CustomBottomSheetButton(
                            buttonName: "View my application",
                            prefixIcon: Iconsax.note_21,
                            onTap: () {},
                          ),
                          const SizedBox(height: 12),
                          CustomBottomSheetButton(
                            buttonName: "Mark as unread",
                            prefixIcon: Iconsax.sms,
                            onTap: () {},
                          ),
                          const SizedBox(height: 12),
                          CustomBottomSheetButton(
                            buttonName: "Mute",
                            prefixIcon: Iconsax.notification,
                            onTap: () {},
                          ),
                          const SizedBox(height: 12),
                          CustomBottomSheetButton(
                            buttonName: "Archive",
                            prefixIcon: Iconsax.import_1,
                            onTap: () {},
                          ),
                          const SizedBox(height: 12),
                          CustomBottomSheetButton(
                            buttonName: "Delete conversation",
                            prefixIcon: Iconsax.trash,
                            onTap: () {},
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Iconsax.more))
      ],
    );
  }
}
