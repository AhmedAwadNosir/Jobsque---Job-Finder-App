// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_file_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CvFileModelAdapter extends TypeAdapter<CvFileModel> {
  @override
  final int typeId = 0;

  @override
  CvFileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CvFileModel(
      cvFileName: fields[0] as String,
      cvFileExcetintion: fields[1] as String,
      fileSize: fields[2] as int,
      cvFilePath: fields[3] as String
    );
  }

  @override
  void write(BinaryWriter writer, CvFileModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.cvFileName)
      ..writeByte(1)
      ..write(obj.cvFileExcetintion)
      ..writeByte(2)
      ..write(obj.fileSize)
      ..writeByte(3)
      ..write(obj.cvFilePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CvFileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
