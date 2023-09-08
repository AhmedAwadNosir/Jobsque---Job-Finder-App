import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_barr.dart';
import 'package:jobsque_jobfinder/Features/Home/models/suggested_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_details.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_features.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/views/apply_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/jop_company_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/jop_discription_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/jop_people_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';

class JopDetailsViewBody extends StatelessWidget {
  const JopDetailsViewBody({super.key, required this.jopModel});
  final SuggestedJopModel jopModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const CustomBar(
            leftPart: Iconsax.arrow_left,
            centerPart: "Job Detail",
            rightPart: Icon(
              Iconsax.archive_minus5,
              color: AppColors.appPrimaryColors500,
            ),
          ),
          const SizedBox(height: 32),
          Image.asset(width: 42, height: 42, jopModel.comunicationToolIcon),
          const SizedBox(height: 12),
          JopDetails(
            title: jopModel.jopTitle,
            subtitel: jopModel.comunicationtoolname,
            crossAxisAlignment: CrossAxisAlignment.center,
            titleStyle: AppFontsStyles.textstyle20.copyWith(
                fontFamily: textFamilyMedium,
                color: AppColors.appNeutralColors900),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: JopFeatures(
              workType: jopModel.workType,
              workNature: jopModel.workNature,
              jopSkill: jopModel.jopSkill,
            ),
          ),
          const SizedBox(height: 32),
          Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.appNeutralColors100),
            child: TabBar(
                dividerColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    color: AppColors.appPrimaryColors900,
                    borderRadius: BorderRadius.circular(100)),
                labelColor: Colors.white,
                unselectedLabelColor: AppColors.appNeutralColors500,
                unselectedLabelStyle: AppFontsStyles.textstyle14
                    .copyWith(fontFamily: textFamilyMedium),
                tabs: const [
                  Text("Desicription"),
                  Text("Company"),
                  Text("People"),
                ]),
          ),
          const SizedBox(
            height: 24,
          ),
          const Expanded(
            child: TabBarView(
              children: [
                JopDescriptionView(),
                JopCompanyView(),
                JopPeopleView(),
              ],
            ),
          ),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, ApplyJopView.id);
              },
              buttonName: "Apply now"),
          const SizedBox(
            height: 9,
          )
        ],
      ),
    );
  }
}
