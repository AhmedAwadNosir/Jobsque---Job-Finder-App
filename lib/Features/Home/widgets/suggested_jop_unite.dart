import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/my_flutter_app_icons.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_features.dart';

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
    return Container(
      width: 300,
      height: 190,
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
              jopComunicationImage: widget.jopModel.jopImage,
              jopTitle: widget.jopModel.jopName,
              optionICon: isArchived == true
                  ? CustomFlutterIcons.archiveMinus
                  : Iconsax.archive_minus,
              iconSize: isArchived == true ? 28 : 24,
              jopComunicationName: "Zoom • United States",
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
            const SizedBox(
              height: 20,
            ),
            JopFeatures(
              workType: widget.jopModel.jopTimeType,
              workNature: widget.jopModel.jopType,
              jopSkill: widget.jopModel.jopLevel,
              color: int.parse(widget.jopModel.jopLevel) <= 2
                  ? AppColors.appPrimaryColors100
                  : AppColors.appNeutralColors300.withOpacity(0.3),
              textColor: int.parse(widget.jopModel.jopLevel) <= 2
                  ? AppColors.appNeutralColors900
                  : Colors.white,
              rightdestenation: 24,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: widget.jopModel.salary,
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
