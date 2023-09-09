import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_container.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_point.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Notefication/models/notefication_model.dart';

class CustomNoteficationStyle extends StatelessWidget {
  CustomNoteficationStyle({
    super.key,
    required this.notefication,
    this.imageHieght, this.imageWidth,
  });
  final NoteficationModel notefication;
  bool? rightPartPoint = false;
  final double? imageHieght;
  final double? imageWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            notefication.notefictionIcon != null
                ? CircleIconContainer(
                    icon: notefication.notefictionIcon!, iconSize: 24)
                : SizedBox(
                    width:imageHieght?? 40,
                    height:imageWidth?? 40,
                    child: Image.asset(notefication.notefictionImage!)),
            const SizedBox(width: 11),
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText14(title: notefication.noteficationTitle),
                      Row(
                        children: [
                          notefication.righPart == true
                              ? const CustomPoint(
                                  pointColor: AppColors.appInWarningColors600,
                                  hieght: 8,
                                  width: 8,
                                )
                              : Container(),
                          notefication.righPart == true
                              ? const SizedBox(width: 8)
                              : Container(),
                          CustomText12(
                            text: notefication.notificationTime,
                            color:notefication.timeColor?? AppColors.appNeutralColors500,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: 279,
                    child: CustomText12(
                      text: notefication.noteficationSubTitle,
                      color: AppColors.appNeutralColors500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Divider(
          thickness: 1,
          color: AppColors.appNeutralColors200,
        )
      ],
    );
  }
}
