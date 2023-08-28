import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/functions/store_onboardin_info.dart';

import '../Views/Widgets/onboarding_page_view_builder.dart';

void goToNextPage({required pageController, required context}) async{
  if (pageController.page! < OnbardingPageView.onbardingPagesdata.length - 1) {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  } else if (pageController.page ==
      OnbardingPageView.onbardingPagesdata.length - 1) {
    await storeOnboardinInfo();
    Navigator.pushNamed(context, SignInView.id);
  }
}
