// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DBTestModelAdapter extends TypeAdapter<DBTestModel> {
  @override
  final int typeId = 0;

  @override
  DBTestModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DBTestModel(
      firstField: fields[1] as String?,
      secondField: fields[2] as String?,
      thirdField: fields[3] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, DBTestModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstField)
      ..writeByte(2)
      ..write(obj.secondField)
      ..writeByte(3)
      ..write(obj.thirdField);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DBTestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
