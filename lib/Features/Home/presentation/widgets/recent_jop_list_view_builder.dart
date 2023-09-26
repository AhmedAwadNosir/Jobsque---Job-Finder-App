import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/custom_error_widget.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/states_manager/fetch_recent_jops/fetch_recent_jops_cubit.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/recent_jop_unit.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/presentation/views/jop_details_view.dart';

class RecentJopListViewBuilder extends StatelessWidget {
  const RecentJopListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRecentJopsCubit, FetchRecentJopsState>(
      builder: (context, state) {
        if (state is FetchRecentJopsSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.jops.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    var currentJop = state.jops[index];
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return JopDetailsView(jopModel: currentJop);
                      },
                    ));
                  },
                  child: RecentJopUnit(
                    jopModel: state.jops[index],
                  ),
                ),
              );
            },
          );
        } else if (state is FetchRecentJopsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
