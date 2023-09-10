import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/custom_search_messages_par.dart';
import 'package:jobsque_jobfinder/Features/Messages/widgets/search_messages_list_view_builder.dart';

class MessagesListNotEmpty extends StatelessWidget {
  const MessagesListNotEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
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
      ),
    );
  }
}
