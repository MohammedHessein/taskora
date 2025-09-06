import 'dart:convert';

import 'package:taskora/core/shared/models/data_model.dart';

class VerifyAccountResponseModel {
  const VerifyAccountResponseModel({
    required this.success,
    this.message,
    this.data,
    this.errors,
  });

  factory VerifyAccountResponseModel.fromJson(Map<String, dynamic> json) {
    return VerifyAccountResponseModel(
      success: json['success'] ?? false,
      message: json['message'],
      data: json['data'] != null ? DataModel.fromJson(json['data']) : null,
      errors: json['errors'] != null
          ? (json['errors'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, List<String>.from(value)),
            )
          : null,
    );
  }
  final bool success;
  final String? message;
  final DataModel? data;
  final Map<String, List<String>>? errors;

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'data': data?.toJson(),
      'errors': errors,
    };
  }

  static VerifyAccountResponseModel fromRawJson(String str) =>
      VerifyAccountResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());
}
