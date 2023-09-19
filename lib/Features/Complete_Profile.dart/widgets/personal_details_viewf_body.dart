import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_section.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/change_circle_user_photo.dart';

class PersonalDetailsViewBody extends StatelessWidget {
  const PersonalDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 36),
            Center(
              child: ChangeCircleUserPhoto(
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 25),
            CustomTextFieldSection(
              onChanged: (value) {},
              onSubmited: (value) {},
              titleSpace: 2,
              title: "Name",
              titleColor: AppColors.appNeutralColors400,
              content: "Rafif Dian Axelingga",
              contentStyle: AppFontsStyles.textstyle16
                  .copyWith(color: AppColors.appNeutralColors800),
            ),
            const SizedBox(height: 16),
            CustomTextFieldSection(
              onChanged: (value) {},
              onSubmited: (value) {},
              titleSpace: 2,
              title: "Bio",
              titleColor: AppColors.appNeutralColors400,
              content: "Senior UI/UX Designer",
              contentStyle: AppFontsStyles.textstyle16
                  .copyWith(color: AppColors.appNeutralColors800),
            ),
            const SizedBox(height: 16),
            CustomTextFieldSection(
              onChanged: (value) {},
              onSubmited: (value) {},
              titleSpace: 2,
              title: "Adress",
              titleColor: AppColors.appNeutralColors400,
              content: "Ranjingan, Wangon, Wasington City",
              contentStyle: AppFontsStyles.textstyle16
                  .copyWith(color: AppColors.appNeutralColors800),
            ),
            const SizedBox(height: 16),
            const CustomPhoneNumberTextField(
              tilteColor: AppColors.appNeutralColors400,
              sympol: "",
            ),
            Container(constraints: const BoxConstraints(minHeight: 110)),
            CustomButton(onPressed: () {}, buttonName: "Save"),
          ],
        ),
      ),
    );
  }
}
