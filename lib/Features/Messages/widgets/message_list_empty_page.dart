import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/custom_search_messages_par.dart';

class MessagesListEmptyPage extends StatelessWidget {
  const MessagesListEmptyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(
          height: 24,
        ),
        CustomSearchMessagePar(),
        SizedBox(
          height: 106,
        ),
        CustomStatepage(
          stateImage: AppImages.messagesData,
          statetitle: "You have not received any messages",
          stateSubtitle:
              "Once your application has reached the interview stage, you will get a message from the recruiter.",
        ),
      ]),
    );
  }
}
