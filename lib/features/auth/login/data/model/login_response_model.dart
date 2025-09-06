class LoginResponseModel {
  LoginResponseModel({
    required this.success,
    required this.message,
    this.data,
    this.errors,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: json['data'], // can be null
      errors: json['errors'] as String?,
    );
  }

  final bool success;
  final String message;
  final dynamic data;
  final String? errors;

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'data': data,
      'errors': errors,
    };
  }
}
