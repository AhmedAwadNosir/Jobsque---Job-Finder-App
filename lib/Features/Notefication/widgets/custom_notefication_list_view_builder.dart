import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Notefication/models/notefication_model.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_notefication_style.dart';

class CustomNoteficaionListViewBuilder extends StatelessWidget {
  CustomNoteficaionListViewBuilder({super.key});
  List<NoteficationModel> noteficationData = [
    NoteficationModel(
      notefictionImage: AppImages.danaLogo,
      noteficationTitle: "Dana",
      noteficationSubTitle: "Posted new design jobs",
      notificationTime: "10.00AM",
      righPart: true,
    ),
    NoteficationModel(
      notefictionImage: AppImages.shoopeLogo,
      noteficationTitle: "Dana",
      noteficationSubTitle: "Posted new design jobs",
      notificationTime: "10.00AM",
      righPart: true,
    ),
    NoteficationModel(
      notefictionImage: AppImages.slackLogo1,
      noteficationTitle: "Dana",
      noteficationSubTitle: "Posted new design jobs",
      notificationTime: "10.00AM",
      righPart: true,
    ),
    NoteficationModel(
      notefictionImage: AppImages.facebookLogo,
      noteficationTitle: "Dana",
      noteficationSubTitle: "Posted new design jobs",
      notificationTime: "10.00AM",
      righPart: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.43,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: noteficationData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomNoteficationStyle(
                notefication: noteficationData[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
