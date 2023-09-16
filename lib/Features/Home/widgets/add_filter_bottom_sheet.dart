import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_dorp_down_button_form_field.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_type_container.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class AddFilterBottomSheet extends StatelessWidget {
  const AddFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.93,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomBar(
              leftPart: Iconsax.arrow_left,
              centerPart: "Job Detail",
              rightPart: TextButton(
                onPressed: () {},
                child: Text(
                  "Reset",
                  style: AppFontsStyles.textstyle16.copyWith(
                      fontFamily: textFamilyMedium,
                      color: AppColors.appPrimaryColors500),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            CustomTextFieldSection(
              title: "Jop Title",
              prefixICon: const Icon(
                Iconsax.briefcase,
                color: AppColors.appNeutralColors800,
              ),
              onSubmited: (value) {},
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFieldSection(
              title: "Location",
              prefixICon: const Icon(
                Iconsax.location,
                color: AppColors.appNeutralColors800,
              ),
              onSubmited: (value) {},
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomDorpDownButtonFormField(
              title: 'Salary',
              initialValue: r"$5K - $10K",
              itemsList: [
                r"$5K - $10K",
                r"$10K - $15K",
                r"$15K - $20K",
                r"$20K - $25K",
                r"$25K - $30K",
                r"$30K - $35K",
                r"$35K - $40K",
                r"$40K - $45K",
                r"$45K - $50K",
              ],
              prefixIcon: Iconsax.dollar_circle,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomText16Style(title: "Jop Type"),
            const SizedBox(
              height: 12,
            ),
            const Wrap(
              children: [
                JopContainer(title: "Full Time"),
                JopContainer(title: "Remote"),
                JopContainer(title: "Contract"),
                JopContainer(title: "Part Time"),
                JopContainer(title: "Onsite"),
                JopContainer(title: "Internship"),
              ],
            ),
            const Spacer(),
            Center(
                child:
                    CustomButton(onPressed: () {}, buttonName: "Show Result")),
            const SizedBox(
              height: 9,
            ),
          ],
        ),
      ),
    );
  }
}
