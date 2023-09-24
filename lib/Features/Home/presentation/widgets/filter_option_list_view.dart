import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/add_filter_bottom_sheet.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/custom_filtring_bottom_sheet.dart';
import 'package:jobsque_jobfinder/Features/Home/presentation/widgets/filter_option_button.dart';

class FilterOptionListView extends StatefulWidget {
  const FilterOptionListView({super.key});

  @override
  State<FilterOptionListView> createState() => _FilterOptionListViewState();
}

class _FilterOptionListViewState extends State<FilterOptionListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    builder: (context) {
                      return const SingleChildScrollView(
                          child: AddFilterBottomSheet());
                    },
                    isScrollControlled: true);
              });
            },
            icon: const Icon(
              Iconsax.setting_4,
              color: AppColors.appNeutralColors900,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FilterOption(
              filterName: 'Remot1',
              iconOnTap: () {
                setState(() {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return const SingleChildScrollView(
                        child: CustomFiltringBottomShee(),
                      );
                    },
                  );
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FilterOption(
              filterName: 'Remot',
              iconOnTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FilterOption(
              filterName: 'Remot',
              iconOnTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FilterOption(
              filterName: 'Remot',
              iconOnTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
