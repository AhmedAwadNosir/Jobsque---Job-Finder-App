import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';

import 'custom_authentication_option_styls.dart';

class CustomAuthinticationOptions extends StatelessWidget {
  const CustomAuthinticationOptions({
    super.key,
    required this.site1OnTap,
    required this.site2OnTap,
  });
  final void Function()? site1OnTap;
  final void Function()? site2OnTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomAuthenticationOptionStyle(
          siteIcon: AppImages.appGoogle,
          siteName: "google",
          onTap: site1OnTap,
        ),
        const SizedBox(
          width: 19,
        ),
        CustomAuthenticationOptionStyle(
          siteIcon: AppImages.appFacebook,
          siteName: "Facebook",
          onTap: site2OnTap,
        ),
      ],
    );
  }
}
