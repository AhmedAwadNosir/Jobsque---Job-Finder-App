import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';

class CustomBottomSheetButton extends StatelessWidget {
  const CustomBottomSheetButton({
    super.key,
    this.prefixIcon,
    this.prefixIconSize,
    required this.buttonName,
    this.onTap
  });
  final IconData? prefixIcon;
  final double? prefixIconSize;
  final String buttonName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: AppColors.appNeutralColors300),
            borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      size: prefixIconSize ?? 20,
                    )
                  : Container(),
              SizedBox(
                width: prefixIcon == null ? 0 : 14,
              ),
              CustomText16Style(title: buttonName),
              const Spacer(),
              const Icon(
                Iconsax.arrow_right_3,
                size: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
