class VerifyAccountRequestModel {
  const VerifyAccountRequestModel({required this.phone, required this.otp});

  factory VerifyAccountRequestModel.fromJson(Map<String, dynamic> json) {
    return VerifyAccountRequestModel(
      phone: json['phone'] ?? '',
      otp: json['otp'] ?? '',
    );
  }
  final String phone;
  final String otp;

  Map<String, dynamic> toJson() {
    return {'phone': phone, 'otp': otp};
  }
}
