import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_search_jops/fetch_search_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/filter_option_list_view.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/search_result_list_view_builder.dart';

class CustomSerchView extends StatelessWidget {
  const CustomSerchView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageHight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: FilterOptionListView(),
          ),
          BlocBuilder<FetchSearchJopsCubit, FetchSearchJopsState>(
            builder: (context, state) {
              if (state is FetchSearchJopsSuccess) {
                if (state.searchJops.isNotEmpty) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomSectionBar(text: "Featuring 120+ jobs"),
                      const SizedBox(
                        height: 25,
                      ),
                      SearchResultListViewBuilder(
                        jops: state.searchJops,
                      )
                    ],
                  );
                } else {
                  return const Column(
                    children: [
                      SizedBox(
                        height: 116,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 51),
                        child: CustomStatepage(
                          stateImage: AppImages.searchfaild,
                          statetitle: "Search not found",
                          stateSubtitle:
                              "Try searching with different keywords so we can show you",
                        ),
                      )
                    ],
                  );
                }
              } else if (state is FetchSearchJopsFailure) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 24, vertical: pageHight * 0.3),
                    child: CustomErrorWidget(
                      errorMessage: state.errorMessages,
                    ));
              } else {
                return Padding(
                  padding: EdgeInsets.only(top: pageHight * 0.3),
                  child: const CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
