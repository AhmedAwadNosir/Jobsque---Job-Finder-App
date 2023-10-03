import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/complete_profile_view_body.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';

part 'fetch_cv_files_state.dart';

class FetchCvFilesCubit extends Cubit<FetchCvFilesState> {
  FetchCvFilesCubit() : super(FetchCvFilesInitial());
  fetchCvFiles() {
    try {
      var box = Hive.box<CvFileModel>(cvFilebox);
      var cvFiles = box.values.toList();
      emit(FetchCvFilesSuccess(cvFiles: cvFiles));
    } catch (e) {
      emit(FetchCvFilesFailure(errorMessage: e.toString()));
    }
  }

  bool getCvFilesCompletedStates(List<CvFileModel> cvFiles) {
    int counter = 0;
    if (cvFiles.isNotEmpty) {
      CompleteProfileViewBody.cvFilestate = 1;
      emit(FetchCvFilesSuccess(cvFiles: cvFiles));
      return true;
    } else if (cvFiles.isEmpty) {
      CompleteProfileViewBody.cvFilestate = 0;
      emit(FetchCvFilesSuccess(cvFiles: cvFiles));
      return false;
    } else {
      emit(FetchCvFilesSuccess(cvFiles: cvFiles));
      return false;
    }
  }
}
