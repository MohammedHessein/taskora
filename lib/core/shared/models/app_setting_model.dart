class AppSettingModel {
  AppSettingModel({
    required this.id,
    required this.email,
    required this.phone,
    required this.whatsappNumber,
    required this.loyaltyPointValue,
    required this.deliveryFees,
    required this.additionValue,
    required this.workingStartTime,
    required this.workingEndTime,
    required this.createdAt,
    required this.updatedAt,
    this.address,
    this.facebook,
    this.twitter,
    this.youtube,
    this.linkedin,
  });

  factory AppSettingModel.fromJson(Map<String, dynamic> json) {
    return AppSettingModel(
      id: json['id'] as int,
      email: json['email'] as String,
      phone: json['phone'] as String,
      whatsappNumber: json['whatsapp_number'] as String,
      loyaltyPointValue: (json['loyalty_point_value'] as num).toDouble(),
      deliveryFees: (json['delivery_fees'] as num).toDouble(),
      additionValue: (json['addition_value'] as num).toDouble(),
      address: json['address'] as String?,
      workingStartTime: json['working_start_time'] as String,
      workingEndTime: json['working_end_time'] as String,
      facebook: json['facebook'] as String?,
      twitter: json['twitter'] as String?,
      youtube: json['youtube'] as String?,
      linkedin: json['linkedin'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );
  }
  final int id;
  final String email;
  final String phone;
  final String whatsappNumber;
  final double loyaltyPointValue;
  final double deliveryFees;
  final double additionValue;
  final String? address;
  final String workingStartTime;
  final String workingEndTime;
  final String? facebook;
  final String? twitter;
  final String? youtube;
  final String? linkedin;
  final String createdAt;
  final String updatedAt;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'phone': phone,
      'whatsapp_number': whatsappNumber,
      'loyalty_point_value': loyaltyPointValue,
      'delivery_fees': deliveryFees,
      'addition_value': additionValue,
      'address': address,
      'working_start_time': workingStartTime,
      'working_end_time': workingEndTime,
      'facebook': facebook,
      'twitter': twitter,
      'youtube': youtube,
      'linkedin': linkedin,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
