import 'package:hive_flutter/hive_flutter.dart';
part 'saved_jop_model.g.dart';

@HiveType(typeId: 1)
class SavedJopModel extends HiveObject {
  @HiveField(0)
  final String jopName;
  @HiveField(1)
  final String jopImage;
  @HiveField(2)
  final String companyName;
  @HiveField(3)
  final String jopLocation;

  SavedJopModel({
    required this.jopName,
    required this.jopImage,
    required this.companyName,
    required this.jopLocation,
  });
}
