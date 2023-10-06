import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_bottom_sheet_button.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/data/models/saved_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/states_manager/fetch_saved_jop/fetch_saved_jop_cubit.dart';

class SavedJopBottomSheet extends StatelessWidget {
  const SavedJopBottomSheet({super.key, required this.jopModel});
  final SavedJopModel jopModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Image.asset(AppImages.vector),
          const SizedBox(height: 24),
          CustomBottomSheetButton(
            buttonName: "Apply Job",
            prefixIcon: Iconsax.directbox_notif,
            onTap: () {},
          ),
          const SizedBox(height: 12),
          CustomBottomSheetButton(
            buttonName: "Share via...",
            prefixIcon: Iconsax.export_1,
            onTap: () {},
          ),
          const SizedBox(height: 12),
          CustomBottomSheetButton(
            buttonName: "Cancel save",
            prefixIcon: Iconsax.archive_minus,
            onTap: () {
              jopModel.delete();
              BlocProvider.of<FetchSavedJopCubit>(context).fetchSavedJops();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 64),
        ],
      ),
    );
  }
}
