import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class NoteficationSection extends StatefulWidget {
  const NoteficationSection({super.key, required this.noteficaionName});
  final String noteficaionName;

  @override
  State<NoteficationSection> createState() => _NoteficationSectionState();
}

class _NoteficationSectionState extends State<NoteficationSection> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText16Style(
              title: widget.noteficaionName,
              fontfamily: textFamilyRegular,
            ),
            Switch(
              value: isActive,
              activeColor: AppColors.appPrimaryColors100,
              inactiveThumbColor: AppColors.appNeutralColors100,
              activeTrackColor: AppColors.appPrimaryColors500,
              inactiveTrackColor: AppColors.appNeutralColors300,
              trackOutlineWidth: const MaterialStatePropertyAll(0),
              trackOutlineColor:
                  const MaterialStatePropertyAll(AppColors.appNeutralColors300),
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              },
            )
          ],
        ),
        const SizedBox(height: 10.5),
        const Divider(
          thickness: 1,
          color: AppColors.appNeutralColors300,
        )
      ],
    );
  }
}
