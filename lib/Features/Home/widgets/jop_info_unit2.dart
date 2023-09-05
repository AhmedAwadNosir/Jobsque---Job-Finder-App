import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Home/models/suggested_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/jop_nature_options.dart';

class JopInfoUnite2 extends StatefulWidget {
  const JopInfoUnite2({
    super.key,
    required this.jopModel,
  });
  final SuggestedJopModel jopModel;

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
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.appPrimaryColors400,
                ),
                child: Image.asset(widget.jopModel.comunicationToolImage),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.jopModel.jopTitle,
                    style: AppFontsStyles.textstyle18.copyWith(
                        fontFamily: textFamilyMedium,
                        color: AppColors.appNeutralColors900),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.jopModel.comunicationtoolname,
                    style: AppFontsStyles.textstyle12.copyWith(
                      fontFamily: textFamilyMedium,
                      color: AppColors.appNeutralColors700,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    isarrchived = !isarrchived;
                  });
                },
                icon: Icon(Iconsax.archive_minus,
                    color: isarrchived == true
                        ? AppColors.appPrimaryColors500
                        : AppColors.appNeutralColors900),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JopNatureOptions(
                jopnature: widget.jopModel.workType,
                color: AppColors.appPrimaryColors100,
                textColor: AppColors.appPrimaryColors500,
                height: 26,
                width: 72,
              ),
              JopNatureOptions(
                jopnature: widget.jopModel.workNature,
                color: AppColors.appPrimaryColors100,
                textColor: AppColors.appPrimaryColors500,
                height: 26,
                width: 72,
              ),
              widget.jopModel.jopSkill != null
                  ? JopNatureOptions(
                      jopnature: widget.jopModel.jopSkill!,
                      color: AppColors.appPrimaryColors100,
                      textColor: AppColors.appPrimaryColors500,
                      height: 26,
                      width: 72,
                    )
                  : Container(),
              const SizedBox(
                width: 24,
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
          ),
        ],
      ),
    );
  }
}
