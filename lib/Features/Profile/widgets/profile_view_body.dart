import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/views/complete_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/edit_profile_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/help_center_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/languages_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/login_and_security_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/notefication_seting_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/portfolio_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/privacy_policy_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/views/terms%20_conditions_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/custom_user_profile_section.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/user_about_section.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/user_informaion.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/user_jops_info.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/user_proflle_stake_style.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UserProfileStakeStyle(),
          const SizedBox(height: 16),
          const UserInformation(
            userName: "Rafif Dian Axelingga",
            jopTitle: "Senior UI/UX Designer",
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: UserJopsInfo(
              jopAppliedNumber: 46,
              jopReviwedNumber: 23,
              jopContactedNumber: 16,
            ),
          ),
          const SizedBox(height: 28),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: UserAboutSection(
              userAboutInfo:
                  "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
            ),
          ),
          const SizedBox(height: 36),
          const CustomSectionBar(text: "General"),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Edit Profile",
              icon: Iconsax.user_square,
              onTap: () {
                Navigator.pushNamed(context, EditProfileView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Portfolio",
              icon: Iconsax.folder_favorite,
              onTap: () {
                Navigator.pushNamed(context, PortFolioView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Langauge",
              icon: Iconsax.global,
              onTap: () {
                Navigator.pushNamed(context, LanguagesView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Notificaion",
              icon: Iconsax.notification,
              onTap: () {
                Navigator.pushNamed(context, NoteficationSetingView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Login and security",
              icon: Iconsax.lock,
              onTap: () {
                Navigator.pushNamed(context, LoginAndSecurityView.id);
              },
            ),
          ),
          const SizedBox(height: 32),
          const CustomSectionBar(text: "Others"),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Accesibility",
              hieght: 14,
              onTap: () {
                Navigator.pushNamed(context, CompleteProfileView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Help Center",
              hieght: 14,
              onTap: () {
                Navigator.pushNamed(context, HelpCenterView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Terms & Conditions",
              hieght: 14,
              onTap: () {
                Navigator.pushNamed(context, TermsConditionsView.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomProfileOptionSection(
              title: "Privacy Policy",
              hieght: 14,
              onTap: () {
                Navigator.pushNamed(context, PrivacyPolicyView.id);
              },
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
