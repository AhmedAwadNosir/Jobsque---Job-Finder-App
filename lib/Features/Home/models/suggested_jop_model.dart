import 'package:flutter/material.dart';

class SuggestedJopModel {
  final String jopTitle;
  final String comunicationtoolname;
  final String workType;
  final String workNature;
  final String? jopSkill;
  final String salary;
  final String salaryTime;
  final Color? containerColor;
  final String comunicationToolIcon;
  SuggestedJopModel({
    required this.jopTitle,
    required this.comunicationtoolname,
    required this.workType,
    required this.workNature,
    this.jopSkill,
    required this.salary,
    required this.salaryTime,
    this.containerColor,
    required this.comunicationToolIcon,
  });
}
