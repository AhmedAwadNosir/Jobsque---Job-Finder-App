import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class JopLocatinContainer extends StatefulWidget {
  const JopLocatinContainer({
    super.key,
    required this.stateFlag,
    required this.countryName,
  });
  final String stateFlag;
  final String countryName;
  static String workloction = "";
  @override
  State<JopLocatinContainer> createState() => _JopLocatinContainerState();
}

class _JopLocatinContainerState extends State<JopLocatinContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            if (isSelected == true) {
              JopLocatinContainer.workloction = widget.countryName;
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
                      : Colors.white),
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(widget.stateFlag),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  widget.countryName,
                  style: AppFontsStyles.textstyle16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
