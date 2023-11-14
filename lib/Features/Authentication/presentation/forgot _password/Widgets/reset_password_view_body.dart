import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/custom_text_field.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/reset_password/reset_password_cubit.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/password_reset_successfully_view.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  late String password1 = '';
  late String password2 = '';
  bool changeHelperStyleColor1 = false;
  bool changeHelperStyleColor2 = false;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.89,
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 44,
                  ),
                  const PageInitialinfo(
                    pagegole: "Create new password",
                    pagegoledefination:
                        "Set your new password so you can login and acces Jobsque",
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  CustomTextFormField(
                    hintText: "Password",
                    prefixicon: const Icon(Iconsax.lock),
                    suffixicon: const Icon(Iconsax.eye_slash),
                    helperText: "Password must be at least 8 characters",
                    helperStyle: AppFontsStyles.textstyle16.copyWith(
                        color: changeHelperStyleColor1
                            ? AppColors.appSuccessColors500
                            : AppColors.appNeutralColors400),
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      setState(() {
                        password1 = value!;
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        password1 = value!;
                      });
                    },
                    validator: (value) {
                      changeHelperStyleColor1 = true;
                      if (value!.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextFormField(
                    hintText: "Password",
                    prefixicon: const Icon(Iconsax.lock),
                    suffixicon: const Icon(Iconsax.eye_slash),
                    helperText: "Both password must match",
                    helperStyle: AppFontsStyles.textstyle16.copyWith(
                        color: changeHelperStyleColor2
                            ? AppColors.appSuccessColors500
                            : AppColors.appNeutralColors400),
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      setState(() {
                        password2 = value!;
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        password2 = value!;
                      });
                    },
                    validator: (value) {
                      changeHelperStyleColor2 = true;
                      if (value != password1) {
                        return 'Both password must match';
                      } else if (value == password1 &&
                          password1 == '' &&
                          value!.isNotEmpty) {
                        return 'Both password must match';
                      }
                      if (value!.isEmpty) {
                        changeHelperStyleColor2 = false;
                      }
                      return null;
                    },
                  ),
                  const Spacer(),
                  BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
                    listener: (context, state) {
                      if (state is ResetPasswordSuccess) {
                        log(state.result.toString());
                        showSnackBar(
                            "password has restored successfully", context);
                        Navigator.pushNamed(
                            context, PasswordResetSuccessfullyView.id);
                      }
                      if (state is ResetPasswordFailure) {
                        showSnackBar(state.errorMessage, context);
                      }
                    },
                    builder: (BuildContext context, ResetPasswordState state) {
                      return SizedBox(
                        height: 50,
                        child: ModalProgressHUD(
                          inAsyncCall:
                              state is ResetPasswordLoading ? true : false,
                          child: CustomButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  formkey.currentState!.save();
                                  BlocProvider.of<ResetPasswordCubit>(context)
                                      .resetPassword(password: password1);
                                } else {
                                  setState(() {
                                    autovalidateMode = AutovalidateMode.always;
                                  });
                                }
                              },
                              buttonName: "Reset Password",
                              buttonColor: AppColors.appPrimaryColors500),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 9,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
