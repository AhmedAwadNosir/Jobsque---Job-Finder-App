import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Chat/models/message_model.dart';

class CustomSenderTextContainer extends StatelessWidget {
  const CustomSenderTextContainer({
    super.key,
    required this.messges,
  });
  final MessageModel messges;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 272,
          ),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              color: AppColors.appPrimaryColors500),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText14(
                  title: messges.messageContent,
                  titleColor: Colors.white,
                ),
                CustomText12(
                  text: messges.messageTime,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
