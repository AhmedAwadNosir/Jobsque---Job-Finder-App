import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/Notefication/widgets/custom_notefication_list_view_builder.dart';
import 'package:jobsque_jobfinder/Features/Notefication/widgets/custom_yesterday_notefication_list_view.dart';

class NoteficationListNotEmptyPage extends StatelessWidget {
  const NoteficationListNotEmptyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
    const SizedBox(height: 24),
    const CustomSectionBar(text: "New"),
    const SizedBox(height: 21),
    CustomNoteficaionListViewBuilder(),
    const CustomSectionBar(text: "Yesterday"),
    const SizedBox(
      height: 21,
    ),
    CustomYesterdayNoteficaionListViewBuilder()
        ],
      );
  }
}
