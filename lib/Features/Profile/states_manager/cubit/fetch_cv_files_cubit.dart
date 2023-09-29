import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';

part 'fetch_cv_files_state.dart';

class FetchCvFilesCubit extends Cubit<FetchCvFilesState> {
  FetchCvFilesCubit() : super(FetchCvFilesInitial());
  fetchCvFiles() {
    emit(FetchCvFilesLoading());
    try {
      var box = Hive.box<CvFileModel>(cvFilebox);
      var cvFiles = box.values.toList();
      emit(FetchCvFilesSuccess(cvFiles: cvFiles));
    } catch (e) {
      emit(FetchCvFilesFailure(errorMessage: e.toString()));
    }
  }

}
