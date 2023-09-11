import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Home/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_features.dart';

class JopInfoUnite2 extends StatefulWidget {
  const JopInfoUnite2({
    super.key,
    required this.jopModel,
  });
  final JopModel jopModel;

  @override
  State<JopInfoUnite2> createState() => _JopInfoUnite2State();
}

class _JopInfoUnite2State extends State<JopInfoUnite2> {
  bool isarrchived = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          JopDataUnite(
            jopComunicationImage: widget.jopModel.comunicationToolIcon,
            jopTitle: widget.jopModel.jopTitle,
            optionICon: isarrchived == true
                ? CustomFlutterIcons.archiveMinus
                : Iconsax.archive_minus,
            iconSize: isarrchived == true ? 28 : 24,
            jopComunicationName: widget.jopModel.comunicationtoolname,
            iconColor: isarrchived == true
                ? AppColors.appPrimaryColors500
                : AppColors.appNeutralColors900,
            onTap: () {
              setState(() {
                isarrchived = !isarrchived;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: JopFeatures(
                  workType: widget.jopModel.workType,
                  workNature: widget.jopModel.workNature,
                  jopSkill: widget.jopModel.jopSkill,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: widget.jopModel.salary,
                      style: AppFontsStyles.textstyle16.copyWith(
                          fontFamily: textFamilyMedium,
                          color: AppColors.appSuccessColors700),
                    ),
                    TextSpan(
                      text: widget.jopModel.salaryTime,
                      style: AppFontsStyles.textstyle12.copyWith(
                        fontFamily: textFamilyMedium,
                        color: AppColors.appNeutralColors500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
