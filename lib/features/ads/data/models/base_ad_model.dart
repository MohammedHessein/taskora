import 'package:taskora/core/shared/enums.dart';

abstract class BaseAd {
  String get title;
  String get description;
  String get priceAfterDiscount;
  String get priceBeforeDiscount;
  String get imageUrl;
  DateTime get date;
  String get status;
  bool get isLiked;
  ListingTypeTabs get type;
}
