import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_20_style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return CustomText20Style(title: errorMessage);
  }
}
