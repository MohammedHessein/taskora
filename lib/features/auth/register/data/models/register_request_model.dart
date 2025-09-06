class RegisterRequestModel {
  const RegisterRequestModel({
    required this.name,
    required this.email,
    required this.phone,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    return RegisterRequestModel(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );
  }

  final String name;
  final String email;
  final String phone;

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'phone': phone};
  }
}
