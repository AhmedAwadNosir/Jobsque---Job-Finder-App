import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Chat/views/chat_view.dart';
import 'package:jobsque_jobfinder/Features/Notefication/models/notefication_model.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_notefication_style.dart';

class CustomSearchMessageListViewBuilder extends StatelessWidget {
  CustomSearchMessageListViewBuilder({super.key});
  List<NoteficationModel> noteficationData = [
    NoteficationModel(
        notefictionImage: AppImages.twitterLogo1,
        noteficationTitle: "Dana",
        noteficationSubTitle: "Here is the link: http://zoom.com/abcdeefg",
        notificationTime: "12.39AM",
        timeColor: AppColors.appPrimaryColors500),
    NoteficationModel(
        notefictionImage: AppImages.gojekLogo,
        noteficationTitle: "Gojek Indonesia",
        noteficationSubTitle: "Let’s keep in touch.",
        notificationTime: "12.39AM",
        timeColor: AppColors.appPrimaryColors500),
    NoteficationModel(
      notefictionImage: AppImages.shoopeLogo,
      noteficationTitle: "Shoope",
      noteficationSubTitle: "Thank You David!",
      notificationTime: "09.45",
    ),
    NoteficationModel(
        notefictionImage: AppImages.danaLogo1,
        noteficationTitle: "Dana",
        noteficationSubTitle: "Thank you for your attention!",
        notificationTime: "Yesterday",
        timeColor: AppColors.appPrimaryColors500),
    NoteficationModel(
      notefictionImage: AppImages.slackLogo1,
      noteficationTitle: "Slack",
      noteficationSubTitle: "You: I look forward to hearing from you",
      notificationTime: "12/8",
    ),
    NoteficationModel(
      notefictionImage: AppImages.facebookLogo,
      noteficationTitle: "Facebook",
      noteficationSubTitle: "You: What about the interview stage?",
      notificationTime: "12/8",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: ListView.builder(
        itemCount: noteficationData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ChatView.id);
              },
              child: CustomNoteficationStyle(
                notefication: noteficationData[index],
                imageHieght: 44,
                imageWidth: 44,
              ),
            ),
          );
        },
      ),
    );
  }
}
