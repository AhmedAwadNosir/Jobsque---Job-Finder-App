import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/education_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/experience_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/views/personal_details_view.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/cusotm_mision.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/portfolio_mission_bloc_builder.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CompleteProfileViewBody extends StatefulWidget {
  const CompleteProfileViewBody({super.key});
  static int userdatastate = 0;
  static int educationstate = 0;
  static int experincestate = 0;
  static int cvFilestate = 0;
  @override
  State<CompleteProfileViewBody> createState() =>
      _CompleteProfileViewBodyState();
}

class _CompleteProfileViewBodyState extends State<CompleteProfileViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProfileDataCubit, FetchProfileDataState>(
      builder: (context, state) {
        if (state is FetchProfileDataSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 33),
                Center(
                  child: CircularPercentIndicator(
                    radius: 59,
                    lineWidth: 9,
                    backgroundColor: AppColors.appNeutralColors200,
                    percent: (CompleteProfileViewBody.userdatastate+CompleteProfileViewBody.educationstate+CompleteProfileViewBody.experincestate+CompleteProfileViewBody.cvFilestate) / 4,
                    progressColor: AppColors.appPrimaryColors500,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text(
                      "${(((CompleteProfileViewBody.userdatastate+CompleteProfileViewBody.educationstate+CompleteProfileViewBody.experincestate+CompleteProfileViewBody.cvFilestate)/ 4) * 100).toInt()}%",
                      style: AppFontsStyles.textstyle24.copyWith(
                        color: AppColors.appPrimaryColors500,
                        fontFamily: textFamilyMedium,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomText16Style(
                  title:
                      "${(CompleteProfileViewBody.userdatastate+CompleteProfileViewBody.educationstate+CompleteProfileViewBody.experincestate+CompleteProfileViewBody.cvFilestate)}/4 Completed",
                  color: AppColors.appPrimaryColors500,
                ),
                const SizedBox(height: 8),
                const CustomText16Style(
                  title: "Complete your profile before applying for a job",
                  color: AppColors.appNeutralColors500,
                  fontfamily: textFamilyRegular,
                ),
                const SizedBox(height: 34),
                CusotmMision(
                  misionTitle: "Personal Details",
                  mistionSubTitle:
                      "Full name, email, phone number, and your address",
                  isCompleted: BlocProvider.of<FetchProfileDataCubit>(context)
                      .getPersonalDetailCompletedState(state.profileDataModel),
                  diveder: true,
                  destinaion: PersonalDetailsView.id,
                ),
                CusotmMision(
                  misionTitle: "Education",
                  mistionSubTitle:
                      "Enter your educational history to be considered by the recruiter",
                  isCompleted: BlocProvider.of<FetchProfileDataCubit>(context)
                      .geteducationCompletdState(state.profileDataModel),
                  diveder: true,
                  destinaion: EducationView.id,
                ),
                CusotmMision(
                  misionTitle: "Experience",
                  mistionSubTitle:
                      "Enter your work experience to be considered by the recruiter",
                  isCompleted: BlocProvider.of<FetchProfileDataCubit>(context)
                      .getExperinceCompletdState(state.profileDataModel),
                  diveder: true,
                  destinaion: ExperienceView.id,
                ),
                const PortfolioMessionBlocBuilder(),
              ],
            ),
          );
        } else if (state is FetchProfileDataFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
