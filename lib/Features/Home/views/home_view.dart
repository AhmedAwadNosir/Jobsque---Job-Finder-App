import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const id = "HomeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: AppColors.appPrimaryColors500,
          unselectedLabelStyle: AppFontsStyles.textstyle14,
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.appNeutralColors400,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: "Home",
                activeIcon: Icon(Iconsax.home_15)),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.message),
                label: "message",
                activeIcon: Icon(Iconsax.message5)),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.briefcase),
              label: "Applied",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.archive_minus),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user_square),
              label: "Profile",
            )
          ]),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}
