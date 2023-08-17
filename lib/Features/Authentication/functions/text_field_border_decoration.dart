import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';

OutlineInputBorder buildFocusedBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.appPrimaryColors500,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );
}

OutlineInputBorder buildErrorBorders() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.appInDangerColors500,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );
}

OutlineInputBorder buildOutlineInputBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.appNeutralColors300,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
