import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class FilterOption extends StatefulWidget {
  FilterOption({
    super.key,
    required this.filterName,
    this.iconOnTap,
  });
  bool isSelected = false;
  final String filterName;
  final void Function()? iconOnTap;

  @override
  State<FilterOption> createState() => _FilterOptionState();
}

class _FilterOptionState extends State<FilterOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        height: 32,
        width: 96,
        decoration: BoxDecoration(
            color: widget.isSelected == true
                ? AppColors.appPrimaryColors900
                : Colors.white,
            border: Border.all(width: 1, color: AppColors.appNeutralColors300),
            borderRadius: BorderRadius.circular(1000)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
          child: Row(
            children: [
              Text(
                widget.filterName,
                style: AppFontsStyles.textstyle12.copyWith(
                    color: widget.isSelected == true
                        ? Colors.white
                        : AppColors.appNeutralColors500),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.iconOnTap,
                child: Icon(
                  size: 20,
                  Iconsax.arrow_down_1,
                  color: widget.isSelected == true
                      ? Colors.white
                      : AppColors.appNeutralColors500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
