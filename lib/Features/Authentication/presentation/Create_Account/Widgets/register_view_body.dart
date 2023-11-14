import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/interested_job_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/custom_authentication_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/user_auth_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/user_instractions.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/registerApi/register_api_cubit.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';
import '../../Widgets/custom_text_field.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  late String userNameData = '';
  late String passwordData = '';
  late String emialData = '';
  bool changeHelperStyleColor = false;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const SizedBox(height: 39),
              const PageInitialinfo(
                pagegole: "Cereate Account",
                pagegoledefination:
                    "Please create an account to find your dream job",
              ),
              const SizedBox(height: 44),
              CustomTextFormField(
                hintText: 'Username',
                autovalidateMode: autovalidateMode,
                prefixicon: const Icon(
                  Iconsax.user_square,
                ),
                obscureText: false,
                onChanged: (value) {
                  setState(() {
                    userNameData = value!;
                  });
                },
                onSaved: (value) {
                  setState(() {
                    userNameData = value!;
                  });
                },
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "Field is Required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: 'Email',
                autovalidateMode: autovalidateMode,
                prefixicon: const Icon(
                  Iconsax.sms,
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return "Field is Required";
                  }
                  return null;
                },
                obscureText: false,
                onChanged: (value) {
                  setState(() {
                    emialData = value!;
                  });
                },
                onSaved: (value) {
                  setState(() {
                    emialData = value!;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                hintText: "Password",
                prefixicon: const Icon(Iconsax.lock),
                suffixicon: const Icon(Iconsax.eye_slash),
                helperText: "Password must be at least 8 characters",
                helperStyle: AppFontsStyles.textstyle16.copyWith(
                    color: changeHelperStyleColor
                        ? AppColors.appSuccessColors500
                        : AppColors.appNeutralColors400),
                obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  setState(() {
                    passwordData = value!;
                  });
                },
                onSaved: (value) {
                  setState(() {
                    passwordData = value!;
                  });
                },
                validator: (value) {
                  changeHelperStyleColor = true;
                  if (value!.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
              ),
              Container(
                constraints: const BoxConstraints(minHeight: 105),
              ),
              UserInstractions(
                userDestenation: "Login",
                onTap: () {
                  Navigator.pushReplacementNamed(context, SignInView.id);
                },
                userQution: "Already have an account?",
              ),
              const SizedBox(height: 24),
              CustomButton(
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    await BlocProvider.of<RegisterApiCubit>(context)
                        .registerApi(
                            userName: userNameData,
                            email: emialData,
                            password: passwordData);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                buttonName: "Create account",
                buttonColor: (passwordData.isNotEmpty &&
                        emialData.isNotEmpty &&
                        userNameData.isNotEmpty)
                    ? AppColors.appPrimaryColors500
                    : AppColors.appNeutralColors300,
                textButtonColor: (passwordData.isNotEmpty &&
                        emialData.isNotEmpty &&
                        userNameData.isNotEmpty)
                    ? Colors.white
                    : AppColors.appNeutralColors400,
              ),
              const SizedBox(height: 20),
              const UserAuthOptions(
                operationOption: "Or Sign up With Account",
              ),
              const SizedBox(height: 24),
              CustomAuthinticationOptions(site1OnTap: () {
                if (emialData.isNotEmpty) {
                  context.pushreplacmentex(InterstedJobView(
                      registerMethode: googleMethode, email: emialData));
                } else {
                  showSnackBar("email is required", context);
                }
              }, site2OnTap: () {
                if (emialData.isNotEmpty) {
                  context.pushreplacmentex(InterstedJobView(
                      registerMethode: facebookMethode, email: emialData));
                } else {
                  showSnackBar("email is required", context);
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}

