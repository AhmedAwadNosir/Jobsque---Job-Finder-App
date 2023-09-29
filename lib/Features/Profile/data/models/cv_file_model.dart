import 'package:hive/hive.dart';
part'cv_file_model.g.dart';

@HiveType(typeId: 0)
class CvFileModel extends HiveObject {
  @HiveField(0)
  final String cvFileName;
  @HiveField(1)
  final String cvFileExcetintion;
  @HiveField(2)
  final int fileSize;
  @HiveField(3)
  final String cvFilePath;

  CvFileModel( {
    required this.cvFileName,
    required this.cvFileExcetintion,
    required this.fileSize,
    required this.cvFilePath,
  });
}
