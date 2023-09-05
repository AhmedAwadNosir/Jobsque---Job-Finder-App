import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class jopContainer extends StatefulWidget {
  const jopContainer({super.key, required this.title, this.padding});
  final String title;
  static List<String> joptyps = [];
  final EdgeInsetsGeometry? padding;
  @override
  State<jopContainer> createState() => _jopContainerState();
}

class _jopContainerState extends State<jopContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.only(bottom: 16, right: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            if (isSelected == true) {
              jopContainer.joptyps.add(widget.title);
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.appPrimaryColors100
                  : AppColors.appNeutralColors200,
              border: Border.all(
                  width: 1,
                  color: isSelected
                      ? AppColors.appPrimaryColors500
                      : AppColors.appNeutralColors400),
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Text(
              widget.title,
              style: AppFontsStyles.textstyle14.copyWith(
                  color: isSelected
                      ? AppColors.appPrimaryColors500
                      : AppColors.appNeutralColors500),
            ),
          ),
        ),
      ),
    );
  }
}
