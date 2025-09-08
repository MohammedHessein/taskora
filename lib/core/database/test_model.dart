import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

part 'test_model.g.dart';

@HiveType(typeId: 0)
class DBTestModel extends Equatable {
  DBTestModel({this.firstField, this.secondField, this.thirdField})
    : id = const Uuid().v4();
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? firstField;
  @HiveField(2)
  final String? secondField;
  @HiveField(3)
  final num? thirdField;

  @override
  List<Object?> get props => [id, firstField, secondField, thirdField];
}
