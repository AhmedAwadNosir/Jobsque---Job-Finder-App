import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Saved_Jop/data/models/saved_jop_model.dart';
import 'package:meta/meta.dart';

part 'save_jop_state.dart';

class SaveJopCubit extends Cubit<SaveJopState> {
  SaveJopCubit() : super(SaveJopInitial());

  saveJop({required SavedJopModel savedJopModel}) async {
    var box = Hive.box<SavedJopModel>(savedJopBox);
    await box.add(savedJopModel);
    emit(SaveJopSuccess());
  }
}
