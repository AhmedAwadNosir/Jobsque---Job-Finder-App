import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/users_list_view_builder.dart';

class JopPeopleView extends StatelessWidget {
  const JopPeopleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText14(title: "6 Employees For"),
                    CustomText12(text: "UI/UX Design"),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: AppColors.appNeutralColors300),
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const CustomText14(
                          title: "UI/UX Designer",
                          titleColor: AppColors.appNeutralColors900,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.arrow_down_1))
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            UsersListViewBuilder()
          ],
        ),
      ),
    );
  }
}
