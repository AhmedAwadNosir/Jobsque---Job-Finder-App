import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Notefication/presentation/widgets/notefication_list_empty_page.dart';
import 'package:jobsque_jobfinder/Features/Notefication/presentation/widgets/notefication_list_not_empty_page.dart';

// ignore: must_be_immutable
class NoteficationView extends StatelessWidget {
  NoteficationView({super.key});
  static const id = "noteficationveiw";
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Notification",
        paddingTop: 16,
      ),
      body: isEmpty
          ? const SafeArea(child: NoteficationListEmptyPage())
          : const SafeArea(child: NoteficationListNotEmptyPage()),
    );
  }
}
