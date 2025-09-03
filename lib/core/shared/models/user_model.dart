import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  const UserModel({
    this.id,
    this.role,
    this.firstName,
    this.lastName,
    this.name,
    this.avatar,
    this.email,
    this.phone,
    this.whatsappNumber,
    this.address,
    this.otpExpiresAt,
    this.isActive,
    this.bio,
    this.createdAt,
    this.updatedAt,
    this.fcmDeviceToken,
  });

  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? role;
  @HiveField(2)
  final String? firstName;
  @HiveField(3)
  final String? lastName;
  @HiveField(4)
  final String? name;
  @HiveField(5)
  final String? avatar;
  @HiveField(6)
  final String? email;
  @HiveField(7)
  final String? phone;
  @HiveField(8)
  final String? whatsappNumber;
  @HiveField(9)
  final String? address;
  @HiveField(10)
  final String? otpExpiresAt;
  @HiveField(11)
  final int? isActive;
  @HiveField(12)
  final String? bio;
  @HiveField(13)
  final String? createdAt;
  @HiveField(14)
  final String? updatedAt;
  @HiveField(15)
  final String? fcmDeviceToken;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      role: json['role'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      name: json['name'],
      avatar: json['avatar'],
      email: json['email'],
      phone: json['phone'],
      whatsappNumber: json['whatsapp_number'],
      address: json['address'],
      otpExpiresAt: json['otp_expires_at'],
      isActive: json['is_active'],
      bio: json['bio'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      fcmDeviceToken: json['fcm_device_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'role': role,
      'first_name': firstName,
      'last_name': lastName,
      'name': name,
      'avatar': avatar,
      'email': email,
      'phone': phone,
      'whatsapp_number': whatsappNumber,
      'address': address,
      'otp_expires_at': otpExpiresAt,
      'is_active': isActive,
      'bio': bio,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'fcm_device_token': fcmDeviceToken,
    };
  }
}
