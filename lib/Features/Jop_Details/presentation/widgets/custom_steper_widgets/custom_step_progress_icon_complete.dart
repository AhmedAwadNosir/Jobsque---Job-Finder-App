import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';

class CsutomStepProgressIconComplete extends StatelessWidget {
  const CsutomStepProgressIconComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.tickCircle,
      height: 44,
      width: 44,
    );
  }
}
