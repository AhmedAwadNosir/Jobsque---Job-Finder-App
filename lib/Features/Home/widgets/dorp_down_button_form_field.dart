import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';

class SalaryDorpDownButtonFormField extends StatefulWidget {
  const SalaryDorpDownButtonFormField({
    super.key,
  });

  @override
  State<SalaryDorpDownButtonFormField> createState() => _SalaryDorpDownButtonFormFieldState();
}

class _SalaryDorpDownButtonFormFieldState extends State<SalaryDorpDownButtonFormField> {
  String salary = r"$5K - $10K";

  final salaryList = [
    r"$5K - $10K",
    r"$10K - $15K",
    r"$15K - $20K",
    r"$20K - $25K",
    r"$25K - $30K",
    r"$30K - $35K",
    r"$35K - $40K",
    r"$40K - $45K",
    r"$45K - $50K",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText16Style(title: "Salary"),
        const SizedBox(height: 8),
        DropdownButtonFormField(
          items: salaryList
              .map(
                (value) => DropdownMenuItem(
                  value: value,
                  child: CustomText14(title: value),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              salary = value!;
            });
          },
          value: salary,
          icon: const Icon(
            Iconsax.arrow_down_1,
            size: 20,
            color: AppColors.appNeutralColors900,
          ),
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Iconsax.dollar_circle,
              size: 20,
            ),
            border: buildOutlineInputBorder(),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
          ),
          isExpanded: true,
        )
      ],
    );
  }
}
