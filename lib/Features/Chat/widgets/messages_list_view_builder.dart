import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Chat/models/message_model.dart';
import 'package:jobsque_jobfinder/Features/Chat/widgets/custom_reciver_text_container.dart';
import 'package:jobsque_jobfinder/Features/Chat/widgets/custom_sender_text_container.dart';

class MessagsListViewBuilder extends StatelessWidget {
  MessagsListViewBuilder({super.key});
  List<MessageModel> messagesData = [
    MessageModel(
      messageContent:
          "Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.",
      messageTime: "10:18",
      destination: "sender",
    ),
    MessageModel(
      messageContent:
          "Hi Melan, thank you for considering me, this is good news for me.",
      messageTime: "10:18",
      destination: "reciver",
    ),
    MessageModel(
      messageContent:
          "Can we have an interview via google meet call today at 3pm?",
      messageTime: "10:18",
      destination: "sender",
    ),
    MessageModel(
      messageContent: "Of course, I can!",
      messageTime: "10:18",
      destination: "reciver",
    ),
    MessageModel(
      messageContent:
          "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! https://meet.google.com/dis-sxdu-ave",
      messageTime: "10:18",
      destination: "sender",
    ),
    MessageModel(
      messageContent: "Of course, I can!",
      messageTime: "10:18",
      destination: "reciver",
    ),
    MessageModel(
      messageContent:
          "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! https://meet.google.com/dis-sxdu-ave",
      messageTime: "10:18",
      destination: "sender",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: messagesData.length,
        itemBuilder: (context, index) {
          if (messagesData[index].destination != "sender") {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomSenderTextContainer(messges: messagesData[index]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomRciverTextContainer(message: messagesData[index]),
            );
          }
        },
      ),
    );
  }
}
