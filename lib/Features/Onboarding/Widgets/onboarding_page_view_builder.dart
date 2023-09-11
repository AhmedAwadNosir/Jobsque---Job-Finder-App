import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custome_onbarding_page.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/models/onboarding_model.dart';

class OnbardingPageView extends StatelessWidget {
  const OnbardingPageView({super.key, required this.pageController});
  final PageController pageController;
  static List<OnboardingModel> onbardingPagesdata = [
    OnboardingModel(
      image: AppImages.appbackground1,
      titlePart1: "Find a job, and ",
      titlePart2: "start building ",
      titlePart3: "your career from now on",
      subTitle:
          "Explore over 25,924 available job roles and upgrade your operator now.",
    ),
    OnboardingModel(
      image: AppImages.appbackground2,
      titlePart1: "Hundreds of jobs  ",
      titlePart2: "are waiting for you ",
      titlePart3: "to join together",
      subTitle:
          "Immediately join us and start applying for the job you are interested in.",
    ),
    OnboardingModel(
      image: AppImages.appbackground3,
      titlePart1: "Get the best ",
      titlePart2: "choice for the job ",
      titlePart3: "you've always dreamed of",
      subTitle:
          "The better the skills you have, the greater the good job opportunities for you.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onbardingPagesdata.length,
      itemBuilder: (context, index) {
        return CustomObardindPage(onboardingModel: onbardingPagesdata[index]);
      },
    );
  }
}
