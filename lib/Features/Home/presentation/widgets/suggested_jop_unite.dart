// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/functions/get_expirence_level.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/jop_features.dart';

class SuggestedJopUnit extends StatefulWidget {
  const SuggestedJopUnit({
    super.key,
    required this.jopModel,
    this.onPressed,
  });
  final JopModel jopModel;
  final void Function()? onPressed;

  @override
  State<SuggestedJopUnit> createState() => _SuggestedJopUnitState();
}

class _SuggestedJopUnitState extends State<SuggestedJopUnit> {
  bool isArchived = false;

  @override
  Widget build(BuildContext context) {
    int joplength = widget.jopModel.jopLocation.length - 1;
    int joplength1 = widget.jopModel.jopLocation.length;
    String jopLocation = widget.jopModel.jopLocation;
    return Container(
      width: 300,
      height: 215,
      decoration: BoxDecoration(
        color: int.parse(widget.jopModel.jopLevel) <= 2
            ? AppColors.appNeutralColors100
            : AppColors.appPrimaryColors900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          children: [
            JopDataUnite(
              jopTitleWidth: MediaQuery.of(context).size.width * 0.47,
              companyImage: widget.jopModel.jopImage,
              jopTitle: widget.jopModel.jopName,
              optionICon: isArchived == true
                  ? CustomFlutterIcons.archiveMinus
                  : Iconsax.archive_minus,
              iconSize: isArchived == true ? 28 : 24,
              jopComunicationName:
                  "${widget.jopModel.companyName} • ${widget.jopModel.jopLocation.substring(joplength - 5, jopLocation[joplength] == "." ? joplength : joplength1)}",
              titleColor: int.parse(widget.jopModel.jopLevel) <= 2
                  ? AppColors.appNeutralColors900
                  : Colors.white,
              subTitleColor: int.parse(widget.jopModel.jopLevel) <= 2
                  ? AppColors.appNeutralColors600
                  : AppColors.appNeutralColors400,
              iconColor: isArchived == true
                  ? AppColors.appPrimaryColors500
                  : (int.parse(widget.jopModel.jopLevel) <= 2
                      ? AppColors.appNeutralColors900
                      : Colors.white),
              onTap: () {
                setState(() {
                  isArchived = !isArchived;
                });
              },
            ),
            const Spacer(),
            JopFeatures(
              workType: widget.jopModel.jopTimeType,
              workNature: widget.jopModel.jopType,
              jopSkill: getExperinceLevel(widget.jopModel.jopLevel),
              color: int.parse(widget.jopModel.jopLevel) <= 2
                  ? AppColors.appPrimaryColors100
                  : AppColors.appNeutralColors300.withOpacity(0.3),
              textColor: int.parse(widget.jopModel.jopLevel) <= 2
                  ? AppColors.appNeutralColors900
                  : Colors.white,
              rightdestenation: 24,
            ),
            const Spacer(),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$${int.parse(widget.jopModel.salary) ~/ 1000}K",
                        style: AppFontsStyles.textstyle18.copyWith(
                          fontFamily: textFamilyMedium,
                          color: int.parse(widget.jopModel.jopLevel) <= 2
                              ? AppColors.appNeutralColors900
                              : Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "/Month",
                        style: AppFontsStyles.textstyle12.copyWith(
                          fontFamily: textFamilyMedium,
                          color: int.parse(widget.jopModel.jopLevel) <= 2
                              ? AppColors.appNeutralColors500
                              : Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 36,
                  width: 104,
                  child: ElevatedButton(
                      onPressed: widget.onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appPrimaryColors500,
                      ),
                      child: Text(
                        "Apply now",
                        style: AppFontsStyles.textstyle12.copyWith(
                            fontFamily: textFamilyMedium, color: Colors.white),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
