import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/profile_option_style.dart';

class CustomProfileOptionSection extends StatelessWidget {
  const CustomProfileOptionSection({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    this.hieght,
  });
  final String title;
  final IconData? icon;
  final void Function()? onTap;
  final double? hieght;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 14),
        ProfileOptionStyle(
          title: title,
          icon: icon,
          onTap: onTap,
        ),
        SizedBox(height: hieght ?? 14),
        const Divider(
          thickness: 1,
          color: AppColors.appNeutralColors200,
        )
      ],
    );
  }
}
