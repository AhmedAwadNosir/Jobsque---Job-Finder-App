import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Profile/models/language_model.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/langauge_section.dart';

class LanguagesListViewBuilder extends StatefulWidget {
  const LanguagesListViewBuilder({super.key});

  @override
  State<LanguagesListViewBuilder> createState() =>
      _LanguagesListViewBuilderState();
}

class _LanguagesListViewBuilderState extends State<LanguagesListViewBuilder> {
  List<LanguageModel> languageData = [
    LanguageModel(
      languageCountry: AppImages.englandpng,
      language: "English",
      isSelected: true,
    ),
    LanguageModel(
      languageCountry: AppImages.indonesia,
      language: "Indonesia",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.saudiarabia,
      language: "Arabic",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.china,
      language: "Chinese",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.netherlandspng,
      language: "Dutch",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.francepng,
      language: "French",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.germanypng,
      language: "German",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.japanpng,
      language: "Japanese",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.southKoreapng,
      language: "Korean",
      isSelected: false,
    ),
    LanguageModel(
      languageCountry: AppImages.portugalpng,
      language: "Portuguese",
      isSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: languageData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: LanguageSection(
              languageModel: languageData[index],
              onTap: () {
                setState(() {
                  var currentLanguage = index;
                  for (int i = 0; i < languageData.length; i++) {
                    if (i == index) {
                      languageData[index].isSelected = true;
                    } else {
                      languageData[i].isSelected = false;
                    }
                  }
                });
              },
            ),
          );
        },
      ),
    );
  }
}
