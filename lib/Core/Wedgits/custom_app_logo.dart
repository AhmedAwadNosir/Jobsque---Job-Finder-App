import 'package:flutter/cupertino.dart';

import '../Utils/app_images.dart';

class CustomAppLogo extends StatelessWidget {
  const CustomAppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.appPLogo,
      width: 81,
      height: 19,
    );
  }
}
