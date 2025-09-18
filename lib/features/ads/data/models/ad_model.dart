import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/base_ad_model.dart';
import 'package:taskora/generated/assets.dart';

class AdModel implements BaseAd {
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

  @override
  final String title;

  @override
  final String description;

  @override
  final String priceAfterDiscount;

  @override
  final String priceBeforeDiscount;

  @override
  final String imageUrl;

  @override
  final DateTime date;

  @override
  final ListingTypeTabs type;

  @override
  final String status;

  @override
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
