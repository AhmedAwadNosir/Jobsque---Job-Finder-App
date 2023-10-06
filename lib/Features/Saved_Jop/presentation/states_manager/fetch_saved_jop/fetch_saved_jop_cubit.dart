import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/data/models/saved_jop_model.dart';
import 'package:meta/meta.dart';

part 'fetch_saved_jop_state.dart';

class FetchSavedJopCubit extends Cubit<FetchSavedJopState> {
  FetchSavedJopCubit() : super(FetchSavedJopInitial());

  fetchSavedJops() {
    var box = Hive.box<SavedJopModel>(savedJopBox);
    var savedJops = box.values.toList();
    emit(FetchSavedJopSuccess(savedJops: savedJops));
  }
}
