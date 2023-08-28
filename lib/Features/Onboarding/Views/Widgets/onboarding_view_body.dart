import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/onboarding_page_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/functions/store_onboardin_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../Core/Utils/app_fonts_styles.dart';
import '../../functions/next_page_view.dart';
import '../../../../Core/Wedgits/custom_appbarr.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppBarr(
              leftPart: const CustomAppLogo(),
              rightPart: GestureDetector(
                onTap: () async {
                  await storeOnboardinInfo();
                  Navigator.pushNamed(context, SignInView.id);
                },
                child: Text(
                  "Skip",
                  style: AppFontsStyles.textstyle16.copyWith(
                    color: AppColors.appNeutralColors500,
                  ),
                ),
              ),
            ),
          ),
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
