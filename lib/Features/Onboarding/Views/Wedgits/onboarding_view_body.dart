import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Wedgits/onboarding_page_view_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../functions/next_page_view.dart';
import 'custom_appbarr.dart';
import 'custom_button.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppBarr(),
          ),
          Expanded(
              child: OnbardingPageView(
            pageController: _pageController,
          )),
          SmoothPageIndicator(
            controller: _pageController,
            count: OnbardingPageView.onbardingPagesdata.length,
            effect: const WormEffect(
              activeDotColor: Color(AppColors.appPrimaryColors500),
              dotColor: Color(
                AppColors.appPrimaryColors200,
              ),
              dotHeight: 6,
              dotWidth: 6,
            ),
          ),
          CustomButton(
            onPressed: () {
              goToNextPage(_pageController);
            },
          )
        ],
      ),
    );
  }
}