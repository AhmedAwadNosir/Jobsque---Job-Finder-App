import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/job_location_container.dart';

class CustomCountriesWidget extends StatelessWidget {
  const CustomCountriesWidget({
    super.key,
    required this.workLocationtype,
  });
  final String workLocationtype;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        JopLocatinContainer(
            stateFlag: AppImages.unitedstases,
            countryName: "United States",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.malaysia,
            countryName: "Malaysia",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.singafora,
            countryName: "Singapore",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.indonesia,
            countryName: "Indonesia",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.philiphines,
            countryName: "Philipines",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.polanda,
            countryName: "Polandia",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.india,
            countryName: "india",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.vietnam,
            countryName: "Vietnam",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.china,
            countryName: "china",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.canda,
            countryName: "canda",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.saudiarabia,
            countryName: "Suadi Arabia",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.argantina,
            countryName: "Argantina",
            locationTypeWork: workLocationtype),
        JopLocatinContainer(
            stateFlag: AppImages.brazil,
            countryName: "Brazil",
            locationTypeWork: workLocationtype),
      ],
    );
  }
}
