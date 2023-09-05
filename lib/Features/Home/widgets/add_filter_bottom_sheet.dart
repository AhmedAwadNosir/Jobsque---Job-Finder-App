import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/custom_Text.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/custom_filter_text_field.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_type_container.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Iconsax.arrow_left,
                  ),
                ),
                Center(
                  child: Text(
                    "Set Filter",
                    style: AppFontsStyles.textstyle20.copyWith(
                      fontFamily: textFamilyMedium,
                      color: AppColors.appNeutralColors900,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reset",
                    style: AppFontsStyles.textstyle16.copyWith(
                        fontFamily: textFamilyMedium,
                        color: AppColors.appPrimaryColors500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            CustomFilterTextField(
              title: "Jop Title",
              prefixICon: Iconsax.briefcase,
              onSubmited: (value) {},
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomFilterTextField(
              title: "Location",
              prefixICon: Iconsax.location,
              onSubmited: (value) {},
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomFilterTextField(
              title: "Salary",
              prefixICon: Iconsax.dollar_circle,
              suffixIcon: Iconsax.arrow_down_1,
              onSubmited: (value) {},
              onChanged: (value) {},
              suffixIconOnTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomText(title: "Jop Type"),
            const SizedBox(
              height: 12,
            ),
            const Wrap(
              children: [
                jopContainer(title: "Full Time"),
                jopContainer(title: "Remote"),
                jopContainer(title: "Contract"),
                jopContainer(title: "Part Time"),
                jopContainer(title: "Onsite"),
                jopContainer(title: "Internship"),
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
