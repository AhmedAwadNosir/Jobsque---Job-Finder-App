import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_Up/Views/sign_in_view.dart';

import '../Views/Widgets/onboarding_page_view_builder.dart';

void goToNextPage({required pageController, required context}) {
  if (pageController.page! < OnbardingPageView.onbardingPagesdata.length - 1) {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  } else if (pageController.page ==
      OnbardingPageView.onbardingPagesdata.length - 1) {
    Navigator.pushNamed(context, SignInView.id);
  }
}
