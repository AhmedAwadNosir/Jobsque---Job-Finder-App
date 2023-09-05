import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/text_field_border_decoration.dart';

class CustomeSearchBar extends StatefulWidget {
  const CustomeSearchBar(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.onSubmited,
      this.searchBarenabeld,
      this.ontap,
      this.suffixIcon,
      this.controller});
  final String hintText;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSubmited;
  final void Function()? ontap;
  final bool? searchBarenabeld;
  final IconData? suffixIcon;
  final TextEditingController? controller;
  @override
  State<CustomeSearchBar> createState() => _CustomeSearchBarState();
}

class _CustomeSearchBarState extends State<CustomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: SizedBox(
        height: 48,
        child: TextFormField(
          controller: widget.controller,
          onFieldSubmitted: widget.onSubmited,
          onChanged: widget.onChanged,
          enabled: widget.searchBarenabeld,
          decoration: InputDecoration(
            prefixIcon: Image.asset(AppImages.searchIcon),
            suffixIcon: widget.controller!=null?widget.controller!.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.controller!.clear();
                      });
                    },
                    icon: Icon(widget.suffixIcon))
                : null:null,
              
            hintText: widget.hintText,
            hintStyle: AppFontsStyles.textstyle14
                .copyWith(color: AppColors.appNeutralColors400),
            enabledBorder: buildOutlineInputBorder(borderRadius: 100),
            focusedBorder: buildOutlineInputBorder(borderRadius: 100),
            disabledBorder: buildOutlineInputBorder(borderRadius: 100),
          ),
        ),
      ),
    );
  }
}
