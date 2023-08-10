import 'package:flutter/material.dart';
void spalshNavigationControlar({required BuildContext context,required String destination}) {
     Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, destination);
    });
  }