import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_point.dart';

class TextOraganization extends StatelessWidget {
  const TextOraganization({
    super.key,
    required this.skill,
  });
  final String skill;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 7),
          child: CustomPoint(),
        ),
        const SizedBox(
          width: 4,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: CustomText12(text: skill),
        ),
      ],
    );
  }
}
