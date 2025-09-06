class RegisterResponseModel {
  const RegisterResponseModel({
    required this.success,
    required this.message,
    this.errors,
    this.data,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      errors: json['errors'] != null
          ? (json['errors'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, List<String>.from(value)),
            )
          : null,
      data: json['data'],
    );
  }
  final bool success;
  final String message;
  final Map<String, List<String>>? errors;
  final dynamic data;

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'errors': errors,
      'data': data,
    };
  }
}
