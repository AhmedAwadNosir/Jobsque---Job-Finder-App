import 'package:flutter/material.dart';

import '../Views/Wedgits/onboarding_page_view_builder.dart';

void goToNextPage(PageController) {
    if (PageController.page! <
        OnbardingPageView.onbardingPagesdata.length - 1) {
      PageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }