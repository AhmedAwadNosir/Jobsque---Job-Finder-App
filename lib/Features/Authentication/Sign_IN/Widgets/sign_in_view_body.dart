import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_appbarr.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Views/register_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/custom_authentication_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/custom_text_field.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/user_auth_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/user_instractions.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';
import '../../Cubits/SignIn/sign_in_cubit.dart';
import '../../Widgets/custom_auth_basic_operation.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName;
  late String password;
  String? userNameData = '';
  String? passwordData = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const CustomAppBarr(
                  rightPart: CustomAppLogo(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 44),
                  child: PageInitialinfo(
                    pagegole: "Login ",
                    pagegoledefination: "Please login to find your dream job",
                  ),
                ),
                CustomTextField(
                  hintText: 'Username',
                  prefixicon: const Icon(
                    Iconsax.user_square,
                  ),
                  obscureText: false,
                  autovalidateMode: autovalidateMode,
                  onChanged: (value) {
                    setState(() {
                      userNameData = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      userName = value!;
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
                CustomTextField(
                  hintText: "Password",
                  prefixicon: const Icon(Iconsax.lock),
                  suffixicon: const Icon(Iconsax.eye_slash),
                  obscureText: true,
                  autovalidateMode: autovalidateMode,
                  onChanged: (value) {
                    setState(() {
                      passwordData = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      password = value!;
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
                  height: 20,
                ),
                const CustomAuthBasicOperation(),
                Container(
                  constraints: const BoxConstraints(minHeight: 173),
                ),
                UserInstractions(
                  userDestenation: "Register",
                  onTap: () {
                    Navigator.pushNamed(context, RegisterView.id);
                  },
                  userQution: "Dont’t have an account?",
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                  onPressed: () async{
                    if (formkey.currentState!.validate()){
                      formkey.currentState!.save();
                     await BlocProvider.of<SignInCubit>(context)
                          .singInWithEmailAndPassword(
                              username: userName, password: password);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  buttonName: "Login",
                  buttonColor:
                      (userNameData!.isNotEmpty && passwordData!.isNotEmpty)
                          ? AppColors.appPrimaryColors500
                          : AppColors.appNeutralColors300,
                  textButtonColor:
                      (userNameData!.isNotEmpty && passwordData!.isNotEmpty)
                          ? Colors.white
                          : AppColors.appNeutralColors500,
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  height: 20,
                ),
                const UserAuthOptions(
                  operationOption: "Or Login With Account",
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomAuthinticationOptions(
                  site1OnTap: () async {
                    await BlocProvider.of<SignInCubit>(context).signInGoogle();
                  },
                  site2OnTap: () async {
                    await BlocProvider.of<SignInCubit>(context)
                        .signInFacebook();
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
    );
  }
}
