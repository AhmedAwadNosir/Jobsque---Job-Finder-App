import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/states_manager/fetch_saved_jop/fetch_saved_jop_cubit.dart';

import 'package:jobsque_jobfinder/Features/Saved_Jop/presentation/widgets/saved_jop_view_body.dart';

class SavedView extends StatefulWidget {
  const SavedView({super.key});

  @override
  State<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends State<SavedView> {
  @override
  void initState() {
    BlocProvider.of<FetchSavedJopCubit>(context).fetchSavedJops();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        paddingTop: 16,
        title: "Saved",
        customOnPressed: () {},
      ),
      body: const SafeArea(child: SavedJopsViewBody()),
    );
  }
}
