import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';

class NoteficationListEmptyPage extends StatelessWidget {
  const NoteficationListEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: Column(
        children: [
          SizedBox(height: 158),
          CustomStatepage(
              stateImage: AppImages.notificationIcon,
              statetitle: "No new notifications yet",
              stateSubtitle:
                  "You will receive a notification if there is something on your account"),
        ],
      ),
    );
  }
}
