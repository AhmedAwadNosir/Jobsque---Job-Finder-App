import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_features.dart';

class RecentJopUnit extends StatefulWidget {
  const RecentJopUnit({
    super.key,
    required this.jopModel,
  });
  final JopModel jopModel;

  @override
  State<RecentJopUnit> createState() => _RecentJopUnitState();
}

class _RecentJopUnitState extends State<RecentJopUnit> {
  bool isarrchived = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          JopDataUnite(
            jopComunicationImage: widget.jopModel.jopImage,
            jopTitle: widget.jopModel.jopName,
            optionICon: isarrchived == true
                ? CustomFlutterIcons.archiveMinus
                : Iconsax.archive_minus,
            iconSize: isarrchived == true ? 28 : 24,
            jopComunicationName: "Zoom • United States",
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
                  workType: widget.jopModel.jopTimeType,
                  workNature: widget.jopModel.jopType,
                  jopSkill: widget.jopModel.jopLevel,
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
                      text: "/Month",
                      style: AppFontsStyles.textstyle12.copyWith(
                        fontFamily: textFamilyMedium,
                        color: AppColors.appNeutralColors500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            color: AppColors.appNeutralColors200,
          )
        ],
      ),
    );
  }
}
