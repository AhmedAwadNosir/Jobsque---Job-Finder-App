import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Home/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_features.dart';

class JopInfoUnite1 extends StatefulWidget {
  const JopInfoUnite1({
    super.key,
    required this.jopModel,
    this.onPressed,
  });
  final JopModel jopModel;
  final void Function()? onPressed;

  @override
  State<JopInfoUnite1> createState() => _JopInfoUnite1State();
}

class _JopInfoUnite1State extends State<JopInfoUnite1> {
  bool isArchived = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 190,
      decoration: BoxDecoration(
        color: widget.jopModel.containerColor ?? AppColors.appPrimaryColors900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          children: [
            JopDataUnite(
              jopComunicationImage: widget.jopModel.comunicationToolIcon,
              jopTitle: widget.jopModel.jopTitle,
              optionICon: Iconsax.archive_minus,
              jopComunicationName: widget.jopModel.comunicationtoolname,
              titleColor: widget.jopModel.containerColor != null
                  ? AppColors.appNeutralColors900
                  : Colors.white,
              subTitleColor: widget.jopModel.containerColor != null
                  ? AppColors.appNeutralColors600
                  : AppColors.appNeutralColors400,
              iconColor: isArchived == true
                  ? AppColors.appPrimaryColors500
                  : (widget.jopModel.containerColor != null
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
              workType: widget.jopModel.workType,
              workNature: widget.jopModel.workNature,
              jopSkill: widget.jopModel.jopSkill,
              color: widget.jopModel.containerColor != null
                  ? AppColors.appPrimaryColors100
                  : AppColors.appNeutralColors300.withOpacity(0.3),
              textColor: widget.jopModel.containerColor != null
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
                          color: widget.jopModel.containerColor != null
                              ? AppColors.appNeutralColors900
                              : Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: widget.jopModel.salaryTime,
                        style: AppFontsStyles.textstyle12.copyWith(
                          fontFamily: textFamilyMedium,
                          color: widget.jopModel.containerColor != null
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
