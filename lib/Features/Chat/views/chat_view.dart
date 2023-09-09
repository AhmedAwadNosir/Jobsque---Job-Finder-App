import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Chat/widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const id = "ChatView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ChatViewBody()),
    );
  }
}
