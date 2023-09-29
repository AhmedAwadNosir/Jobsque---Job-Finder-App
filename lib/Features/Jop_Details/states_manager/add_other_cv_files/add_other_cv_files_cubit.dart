import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
import 'package:meta/meta.dart';
import 'package:file_picker/file_picker.dart';
part 'add_other_cv_files_state.dart';

class AddOtherCvFilesCubit extends Cubit<AddOtherCvFilesState> {
  AddOtherCvFilesCubit() : super(AddOtherCvFilesInitial());
  FilePickerResult? result;
  String? fileName;
  int? fileSize;
  String? fileExtintion;
  String? filePath;
   addOtherCvFile() async {
    try {
      result = await FilePicker.platform.pickFiles();
      if (result != null) {
        fileName = result!.files.first.name;
        fileSize = result!.files.first.size;
        fileExtintion = result!.files.first.extension;
        filePath = result!.files.first.path;
        var box = Hive.box<CvFileModel>(otherCvsFilebox);
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
        emit(AddOtherCvFilesSuccess(
          
        ));
      }
    } catch (e) {
      emit(AddOtherCvFilesFailure(errorMessages: e.toString()));
    }
  }
}
