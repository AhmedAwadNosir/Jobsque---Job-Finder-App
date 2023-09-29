import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
import 'package:meta/meta.dart';
import 'package:file_picker/file_picker.dart';
part 'add_cv_file_state.dart';

class AddCvFileCubit extends Cubit<AddCvFileState> {
  AddCvFileCubit() : super(AddCvFileInitial());
  FilePickerResult? result;
  String? fileName;
  int? fileSize;
  String? fileExtintion;
  String? filePath;

  addCvFile() async {
    try {
      result = await FilePicker.platform.pickFiles();
      if (result != null) {
        fileName = result!.files.first.name;
        fileSize = result!.files.first.size;
        fileExtintion = result!.files.first.extension;
        filePath = result!.files.first.path;
        var box = Hive.box<CvFileModel>(cvFilebox);
        await box.add(
          CvFileModel(
              cvFileName: fileName!,
              cvFileExcetintion: fileExtintion!,
              fileSize: fileSize! ~/ 1000,
              cvFilePath: filePath!),
        );
        log("fileName  : $fileName");
        log("fileSize  : $fileSize");
        log("fileExtintion  : $fileExtintion");
        log("filePath : $filePath");
        emit(AddCvFileSuccess());
      }
    } catch (e) {
      emit(AddCvFileFailure(errorMessage: e.toString()));
    }
  }
 
}
