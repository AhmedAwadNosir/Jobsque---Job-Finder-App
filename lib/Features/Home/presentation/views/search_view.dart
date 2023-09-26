import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_search_bar.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_search_jops/fetch_search_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/faild_search_view.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/search_view_empty.dart';

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(74),
        child: CustomAppBar(
          paddingTop: 14,
          rightpart: SizedBox(
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

                  BlocProvider.of<FetchSearchJopsCubit>(context)
                      .fetchSearchJops(searchKey: searchValue);
                });
              },
            ),
          ),
        ),
      ),
      body: searchValue.isEmpty
          ? const SearchViewEmpty()
          : const CustomSerchView(),
    );
  }
}
