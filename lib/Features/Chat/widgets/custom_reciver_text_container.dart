import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Chat/models/message_model.dart';

class CustomRciverTextContainer extends StatelessWidget {
  const CustomRciverTextContainer({
    super.key,
    required this.message,
  });
  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 272,
          ),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              color: AppColors.appNeutralColors200),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText14(
                  title: message.messageContent,
                  titleColor: AppColors.appNeutralColors800,
                ),
                CustomText12(
                  text: message.messageTime,
                  color: AppColors.appNeutralColors400,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
