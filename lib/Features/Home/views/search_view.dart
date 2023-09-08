import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/faild_search_view.dart';
import 'package:jobsque_jobfinder/Features/Home/widgets/search_view_empty.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});
  static const id = "searchview";

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String searchValue = "";
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            height: 48,
            width: 291,
            child: CustomeSearchBar(
              hintText: "Type something...",
              suffixIcon: Iconsax.close_circle,
              controller: controller,
              onChanged: (value) {
                setState(() {
                  controller.text;
                  searchValue = value!;
                });
              },
              onSubmited: (value) {
                setState(() {
                  controller.text;
                  searchValue = value!;
                });
              },
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: searchValue.isEmpty
          ? const SearchViewEmpty()
          : const FaildSearchView(),
    );
  }
}
