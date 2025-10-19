class RegisterRequestModel {
  const RegisterRequestModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    return RegisterRequestModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );
  }

  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone': phone,
    };
  }
}
