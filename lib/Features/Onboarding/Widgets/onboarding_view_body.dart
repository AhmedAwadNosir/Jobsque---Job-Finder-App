import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/onboarding_page_view_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../functions/next_page_view.dart';
import 'custom_button.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  int currentPage = 0;
  bool isLastPage = false;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
    _pageController.addListener(_pagelistener);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageController.removeListener(_pagelistener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          
          Expanded(
              child: OnbardingPageView(
            pageController: _pageController,
          )),
          SmoothPageIndicator(
            controller: _pageController,
            count: OnbardingPageView.onbardingPagesdata.length,
            effect: const WormEffect(
              activeDotColor: AppColors.appPrimaryColors500,
              dotColor: AppColors.appPrimaryColors200,
              dotHeight: 6,
              dotWidth: 6,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 36, bottom: 25, left: 24, right: 24),
            child: CustomButton(
              onPressed: () {
                goToNextPage(context: context, pageController: _pageController);
              },
              buttonName: "Next",
              islastPage: isLastPage,
            ),
          )
        ],
      ),
    );
  }

  void _pagelistener() {
    setState(() {
      currentPage = _pageController.page!.round();
      isLastPage =
          currentPage == OnbardingPageView.onbardingPagesdata.length - 1;
    });
  }
}
