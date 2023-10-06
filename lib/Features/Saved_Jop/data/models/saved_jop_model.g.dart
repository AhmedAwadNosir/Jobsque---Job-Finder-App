// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_jop_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedJopModelAdapter extends TypeAdapter<SavedJopModel> {
  @override
  final int typeId = 1;

  @override
  SavedJopModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedJopModel(
      jopName: fields[0] as String,
      jopImage: fields[1] as String,
      companyName: fields[2] as String,
      jopLocation: fields[3] as String
    );
  }

  @override
  void write(BinaryWriter writer, SavedJopModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.jopName)
      ..writeByte(1)
      ..write(obj.jopImage)
      ..writeByte(2)
      ..write(obj.companyName)
      ..writeByte(3)
      ..write(obj.jopLocation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedJopModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
