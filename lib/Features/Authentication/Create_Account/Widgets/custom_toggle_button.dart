import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({
    super.key,
    required this.isSelected,
    required this.childern,
    required this.onPressed,
  });
  final List<bool> isSelected;
  final List<Widget> childern;
  final void Function(int index) onPressed;
  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  late int numbersOfChildern;
  @override
  void initState() {
    numbersOfChildern = widget.childern.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46,
        decoration: BoxDecoration(
          color: AppColors.appNeutralColors100,
          borderRadius: BorderRadius.circular(100),
        ),
        child: ToggleButtons(
          isSelected: widget.isSelected,
          onPressed: widget.onPressed,
          constraints: BoxConstraints.expand(
            width: (MediaQuery.sizeOf(context).width - 48) / numbersOfChildern,
          ),
          renderBorder: false,
          borderRadius: BorderRadius.circular(100),
          selectedColor: Colors.white,
          fillColor: Colors.transparent,
          splashColor: Colors.transparent,
          children: widget.childern,
        ));
  }
}
