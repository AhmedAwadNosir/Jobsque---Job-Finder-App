import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';

import '../Widgets/success_account_view_body.dart';

class SuccessAcountIlstrationView extends StatelessWidget {
  const SuccessAcountIlstrationView({super.key});
  static const id = "Success Account";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        paddingTop: 16,
      ),
      body: SafeArea(child: SuccessAccountIlsrationViewBody()),
    );
  }
}
