import 'package:flutter/material.dart';

import '../Widgets/success_account_view_body.dart';

class SuccessAcountIlstrationView extends StatelessWidget {
  const SuccessAcountIlstrationView({super.key});
  static const id = "Success Account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff292D32)),
      ),
      body: const SafeArea(child: SuccessAccountIlsrationViewBody()),
    );
  }
}
