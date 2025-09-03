import 'package:taskora/core/shared/models/app_setting_model.dart';

class AppSettingsResponseModel {
  AppSettingsResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AppSettingsResponseModel.fromJson(Map<String, dynamic> json) {
    return AppSettingsResponseModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AppSettingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  final bool success;
  final String message;
  final List<AppSettingModel> data;

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'data': data.map((e) => e.toJson()).toList(),
    };
  }
}
