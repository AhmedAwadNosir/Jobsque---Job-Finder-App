import 'package:flutter/material.dart';

class NoteficationModel {
  final String? notefictionImage;
  final IconData? notefictionIcon;
  final String noteficationTitle;
  final String noteficationSubTitle;
  final String notificationTime;
  final bool? righPart;
  final Color? timeColor;

  NoteficationModel({
    this.notefictionImage,
    this.notefictionIcon,
    required this.noteficationTitle,
    required this.noteficationSubTitle,
    required this.notificationTime,
    this.righPart,
    this.timeColor
  });
}
