import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class SearchHistoryUnit extends StatelessWidget {
  const SearchHistoryUnit({
    super.key,
    required this.searchName,
    required this.prefixIcon,
    required this.suffixICon,
    required this.suffixIconColor,
    this.onPressed,
  });
  final String searchName;
  final IconData prefixIcon;
  final IconData suffixICon;
  final Color suffixIconColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 17),
      child: SizedBox(
        height: 20,
        child: Row(
          children: [
            Icon(
              prefixIcon,
              color: AppColors.appNeutralColors900,
              size: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              searchName,
              style: AppFontsStyles.textstyle14
                  .copyWith(color: AppColors.appNeutralColors900),
            ),
            const Spacer(),
            IconButton(
                onPressed: onPressed,
                icon: Icon(
                  suffixICon,
                  color: suffixIconColor,
                  size: 22,
                ))
          ],
        ),
      ),
    );
  }
}
