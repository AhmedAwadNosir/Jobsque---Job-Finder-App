import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/models/saved_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/widgets/saved_jop_bottom_sheet.dart';

class SavedJopUnit extends StatelessWidget {
  const SavedJopUnit({
    super.key,
    required this.jopModel,
  });
  final SavedJopModel jopModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JopDataUnite(
          jopComunicationImage: jopModel.comunicationToolIcon,
          jopTitle: jopModel.jopTitle,
          optionICon: Iconsax.more,
          jopComunicationName: jopModel.comunicationtoolname,
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const SingleChildScrollView(
                    child: SavedJopBottomSheet());
              },
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText12(
              text: "Posted 2 days ago",
              color: AppColors.appNeutralColors700,
            ),
            Row(
              children: [
                Icon(
                  size: 12,
                  Iconsax.clock,
                  color: AppColors.appSuccessColors700,
                ),
                SizedBox(width: 6),
                CustomText12(
                  text: "Be an early applicant",
                  color: AppColors.appNeutralColors700,
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        const Divider(
          thickness: 1,
          color: AppColors.appNeutralColors200,
        )
      ],
    );
  }
}
