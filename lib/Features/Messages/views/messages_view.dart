import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/message_list_empty_page.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/messages_list_not_empty_page.dart';

class MessagesView extends StatelessWidget {
  MessagesView({super.key});
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Messsages",
      ),
      body: SafeArea(
          child: isEmpty
              ? const MessagesListEmptyPage()
              : const MessagesListNotEmpty()),
    );
  }
}
