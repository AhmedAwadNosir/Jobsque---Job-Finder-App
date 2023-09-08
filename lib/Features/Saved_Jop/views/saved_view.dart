import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/widgets/saved_jop_list_isnot_empty_page.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/widgets/saved_jop_list_view_empty_page.dart';

class SavedView extends StatefulWidget {
  const SavedView({super.key});

  @override
  State<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends State<SavedView> {
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: isEmpty
            ? const SavedJopListEmptyPge()
            : const SavedJopListNotEmpty());
  }
}
