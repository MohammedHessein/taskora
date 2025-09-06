class LoginRequestModel {
  LoginRequestModel({required this.phoneNumber});

  final String phoneNumber;

  Map<String, dynamic> toJson() => {'phone': phoneNumber};
}
