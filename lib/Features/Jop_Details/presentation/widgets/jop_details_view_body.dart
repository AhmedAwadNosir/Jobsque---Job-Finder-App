import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_network_company_image.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_tap_par.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/functions/get_expirence_level.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_details.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_features.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/views/apply_jop_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/jop_company_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/jop_discription_view.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/widgets/jop_people_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';

class JopDetailsViewBody extends StatelessWidget {
  const JopDetailsViewBody({super.key, required this.jopModel});
  final JopModel jopModel;
  @override
  Widget build(BuildContext context) {
    int joplength = jopModel.jopLocation.length - 1;
    int joplength1 = jopModel.jopLocation.length;
    String jopLocation = jopModel.jopLocation;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomNetworkCompanyImage(
            companyImage: jopModel.jopImage,
            width: 48,
            hieght: 48,
            redius: 10,
          ),
          const SizedBox(height: 12),
          JopDetails(
            title: jopModel.jopName,
            subtitel:
                "${jopModel.companyName} • ${jopModel.jopLocation.substring(joplength - 5, jopLocation[joplength] == "." ? joplength : joplength1)}",
            crossAxisAlignment: CrossAxisAlignment.center,
            titleStyle: AppFontsStyles.textstyle20.copyWith(
                fontFamily: textFamilyMedium,
                color: AppColors.appNeutralColors900),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: JopFeatures(
              workType: jopModel.jopTimeType,
              workNature: jopModel.jopType,
              jopSkill: getExperinceLevel(jopModel.jopLevel),
            ),
          ),
          const SizedBox(height: 32),
          const CustomTapPar(
            tabs: [
              Text("Desicription"),
              Text("Company"),
              Text("People"),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: TabBarView(
              children: [
                JopDescriptionView(
                  jopModel: jopModel,
                ),
                 JopCompanyView(jopModel: jopModel),
                const JopPeopleView(),
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
