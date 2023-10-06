import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/jop_data_unite.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/data/models/saved_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/widgets/saved_jop_bottom_sheet.dart';

class SavedJopUnit extends StatelessWidget {
  const SavedJopUnit({
    super.key,
    required this.jopModel,
  });
  final SavedJopModel jopModel;

  @override
  Widget build(BuildContext context) {
     int joplength = jopModel.jopLocation.length - 1;
    int joplength1 = jopModel.jopLocation.length;
    String jopLocation = jopModel.jopLocation;
    return Column(
      children: [
        JopDataUnite(
          companyImage: jopModel.jopImage,
          jopTitle: jopModel.jopName,
          optionICon: Iconsax.more,
          jopComunicationName:
              "${jopModel.companyName} • ${jopModel.jopLocation.substring(joplength - 5, jopLocation[joplength] == "." ? joplength : joplength1)}",
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return SingleChildScrollView(
                    child: SavedJopBottomSheet(jopModel: jopModel));
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
