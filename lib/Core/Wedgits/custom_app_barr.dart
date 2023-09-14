import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
    this.paddingTop,
    this.title,
    this.centerPart,
    this.rightpart,
    this.customOnPressed,
    this.leftPart,
  });
  final double? paddingTop;
  final String? title;
  final Widget? leftPart;
  final Widget? centerPart;
  final Widget? rightpart;
  final void Function()? customOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, top: paddingTop ?? 0),
      child: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: leftPart != null ? 81 : 56,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: leftPart ??
              IconButton(
                  onPressed: customOnPressed ??
                      () {
                        Navigator.pop(context);
                      },
                  icon: const Icon(Iconsax.arrow_left)),
        ),
        centerTitle: true,
        title: (centerPart == null)
            ? title != null
                ? Text(
                    title!,
                    style: AppFontsStyles.textstyle20.copyWith(
                        color: AppColors.appNeutralColors900,
                        fontFamily: textFamilyMedium),
                  )
                : Container()
            : Container(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: rightpart ?? Container(),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => throw UnimplementedError();
}
