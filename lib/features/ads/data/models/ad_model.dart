import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/generated/assets.dart';

class AdModel {
  AdModel({
    required this.title,
    required this.description,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    required this.imageUrl,
    required this.date,
    required this.type,
    required this.status,
    this.isLiked = false,
  });
  final String title;
  final String description;
  final String priceAfterDiscount;
  final String priceBeforeDiscount;
  final String imageUrl;
  final DateTime date;
  final ListingTypeTabs type;
  final String status;
  bool isLiked;
}

List<AdModel> dummyAds() {
  return List.generate(
    10,
    (index) => AdModel(
      date: DateTime(2025, 7, 20),
      title: 'غسالة 1500W',
      description: 'هي غسالة احدث طراز لعام 2025',
      priceAfterDiscount: 'رس 200',
      priceBeforeDiscount: 'رس 400',
      imageUrl: Assets.imagesLaundry,
      status: 'نشط',
      type: index.isEven ? ListingTypeTabs.daily : ListingTypeTabs.weekly,
    ),
  );
}
