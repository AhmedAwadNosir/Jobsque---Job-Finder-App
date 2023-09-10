import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_Icon_containers.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Features/Chat/widgets/chat_view_par.dart';
import 'package:jobsque_jobfinder/Features/Chat/widgets/custom_chat_text_field.dart';
import 'package:jobsque_jobfinder/Features/Chat/widgets/messages_list_view_builder.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
        child: Column(
          children: [
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ChatViewBar(),
            ),
            const SizedBox(height: 24),
            Container(
              color: AppColors.appNeutralColors100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: AppColors.appNeutralColors400,
                          ),
                        ),
                        SizedBox(width: 12),
                        CustomText12(text: "Today, Nov 13"),
                        SizedBox(width: 12),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: AppColors.appNeutralColors400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    MessagsListViewBuilder(),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  CircleIcons(icon: Iconsax.paperclip),
                  SizedBox(width: 8),
                  CustomchatTextField(),
                  Spacer(),
                  CircleIcons(icon: Iconsax.microphone_2)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
