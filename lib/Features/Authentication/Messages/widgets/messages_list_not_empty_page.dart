import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Messages/widgets/custom_search_messages_par.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Messages/widgets/search_messages_list_view_builder.dart';

class MessagesListNotEmpty extends StatelessWidget {
  const MessagesListNotEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
    children: [
      const SizedBox(
        height: 24,
      ),
      const CustomSearchMessagePar(),
      const SizedBox(
        height: 28,
      ),
      CustomSearchMessageListViewBuilder()
    ],
        ),
      );
  }
}
