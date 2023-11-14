import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/register_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/custom_authentication_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/custom_text_field.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/user_auth_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Widgets/user_instractions.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/SignIn/sign_in_cubit.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';
import '../../Widgets/custom_auth_basic_operation.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  
  String emailData = '';
  String passwordData = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 44),
                  child: PageInitialinfo(
                    pagegole: "Login ",
                    pagegoledefination: "Please login to find your dream job",
                  ),
                ),
                CustomTextFormField(
                  hintText: 'emailAdrress',
                  prefixicon: const Icon(
                    Iconsax.user_square,
                  ),
                  obscureText: false,
                  autovalidateMode: autovalidateMode,
                  onChanged: (value) {
                    setState(() {
                      emailData = value!;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      emailData = value!;
                    });
                  },
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Field is Required";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: "Password",
                  prefixicon: const Icon(Iconsax.lock),
                  suffixicon: const Icon(Iconsax.eye_slash),
                  obscureText: true,
                  autovalidateMode: autovalidateMode,
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
                    if (value?.isEmpty ?? true) {
                      return "Field is Required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomAuthBasicOperation(),
                Container(
                  constraints: const BoxConstraints(minHeight: 180),
                ),
                UserInstractions(
                  userDestenation: "Register",
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RegisterView.id);
                  },
                  userQution: "Dont’t have an account?",
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      await BlocProvider.of<SignInCubit>(context)
                          .signInApi(email: emailData, password: passwordData);
                      //  await BlocProvider.of<SignInCubit>(context)
                      //       .singInWithEmailAndPassword(
                      //           username: userName, password: password);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  buttonName: "Login",
                  buttonColor: (emailData.isNotEmpty && passwordData.isNotEmpty)
                      ? AppColors.appPrimaryColors500
                      : AppColors.appNeutralColors300,
                  textButtonColor:
                      (emailData.isNotEmpty && passwordData.isNotEmpty)
                          ? Colors.white
                          : AppColors.appNeutralColors500,
                ),
                const SizedBox(
                  height: 20,
                ),
                const UserAuthOptions(operationOption: "Or Login With Account"),
                const SizedBox(height: 24),
                CustomAuthinticationOptions(
                  site1OnTap: () async {
                    await BlocProvider.of<SignInCubit>(context).signInGoogle();
                  },
                  site2OnTap: () async {
                    await BlocProvider.of<SignInCubit>(context)
                        .signInFacebook();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
