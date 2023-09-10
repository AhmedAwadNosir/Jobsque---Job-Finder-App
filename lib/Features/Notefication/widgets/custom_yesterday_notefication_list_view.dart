import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Features/Notefication/models/notefication_model.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_notefication_style.dart';

class CustomYesterdayNoteficaionListViewBuilder extends StatelessWidget {
  CustomYesterdayNoteficaionListViewBuilder({super.key});
  List<NoteficationModel> noteficationData1 = [
    NoteficationModel(
      notefictionIcon: Iconsax.sms,
      noteficationTitle: "Email setup successful",
      noteficationSubTitle:
          "Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.",
      notificationTime: "10.00AM",
      righPart: true,
    ),
    NoteficationModel(
        notefictionIcon: Iconsax.search_status,
        noteficationTitle: "Welcome to Jobsque",
        noteficationSubTitle:
            "Hello Rafif Dian Axelingga, thank you for registering Jobsque. Enjoy the various features that....",
        notificationTime: "08.00AM"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: noteficationData1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomNoteficationStyle(
                notefication: noteficationData1[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
