import 'package:taskora/core/shared/models/user_model.dart';

class DataModel {
  const DataModel({this.accessToken, this.user});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      accessToken: json['access_token'],
      user: json['user'] != null ? UserModel.fromJson(json['user']) : null,
    );
  }
  final String? accessToken;
  final UserModel? user;

  Map<String, dynamic> toJson() {
    return {'access_token': accessToken, 'user': user?.toJson()};
  }
}
