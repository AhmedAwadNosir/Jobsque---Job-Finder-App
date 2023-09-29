import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Profile/data/models/cv_file_model.dart';
import 'package:meta/meta.dart';

part 'fetch_other_cv_fiels_state.dart';

class FetchOtherCvFielsCubit extends Cubit<FetchOtherCvFielsState> {
  FetchOtherCvFielsCubit() : super(FetchOtherCvFielsInitial());
    fetchOtherCvFiles() {
    emit(FetchOtherCvFielsLoadin());
    try {
      var box = Hive.box<CvFileModel>(otherCvsFilebox);
      var cvFiles = box.values.toList();
      emit(FetchOtherCvFielsSuccess(cvFiels: cvFiles));
    } catch (e) {
      emit(FetchOtherCvFielsFailure(errorMessage: e.toString()));
    }
  }
}
