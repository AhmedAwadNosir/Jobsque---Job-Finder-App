import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_network_company_image.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/functions/get_expirence_level.dart';
import 'package:jobsque_jobfinder/Features/Home/functions/get_jop_country.dart';
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
    int joplength = widget.jopModel.jopLocation.length - 1;
    int joplength1 = widget.jopModel.jopLocation.length;
    String jopLocation = widget.jopModel.jopLocation;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          JopDataUnite(
            companyImage: widget.jopModel.jopImage,
            jopTitle: widget.jopModel.jopName,
            optionICon: isarrchived == true
                ? CustomFlutterIcons.archiveMinus
                : Iconsax.archive_minus,
            iconSize: isarrchived == true ? 28 : 24,
            jopComunicationName:
                "${widget.jopModel.companyName} • ${widget.jopModel.jopLocation.substring(joplength - 5, jopLocation[joplength] == "." ? joplength : joplength1)}",
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
                  jopSkill: getExperinceLevel(widget.jopModel.jopLevel),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${int.parse(widget.jopModel.salary) ~/ 1000}K",
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
