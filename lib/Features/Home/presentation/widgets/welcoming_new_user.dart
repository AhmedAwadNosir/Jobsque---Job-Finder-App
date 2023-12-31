import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Features/Notefication/presentation/views/notefication_view.dart';

class WelcomingNewUser extends StatelessWidget {
  const WelcomingNewUser({
    super.key,
    this.overflow,
  });
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferencesUtil.getString(userName),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Hi, ${snapshot.data}",
                            overflow: overflow,
                            style: AppFontsStyles.textstyle24.copyWith(
                                fontFamily: textFamilyMedium,
                                color: AppColors.appNeutralColors900),
                          ),
                        ),
                        Text("👋",
                            style: AppFontsStyles.textstyle24
                                .copyWith(fontFamily: textFamilyMedium)),
                      ],
                    ),
                  ),
                  Text(
                    "Create a better future for yourself here",
                    style: AppFontsStyles.textstyle14.copyWith(
                        fontFamily: textFamilyMedium,
                        color: AppColors.appNeutralColors500),
                  ),
                ],
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: AppColors.appNeutralColors300),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, NoteficationView.id);
                  },
                  child: const Icon(
                    Iconsax.notification,
                    color: Color(0xff292D32),
                  ),
                ),
              )
            ],
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
