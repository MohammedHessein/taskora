import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/ads/data/models/base_ad_model.dart';
import 'package:taskora/generated/assets.dart';

class FeaturedAdModel implements BaseAd {
  FeaturedAdModel({
    required this.title,
    required this.description,
    required this.priceBeforeDiscount,
    required this.priceAfterDiscount,
    required this.image,
    required this.isLiked,
    required this.dateString,
  });

  @override
  final String title;

  @override
  final String description;

  @override
  final String priceBeforeDiscount;

  @override
  final String priceAfterDiscount;

  final String image;

  @override
  bool isLiked;

  /// Convert `String` date → `DateTime`
  @override
  DateTime get date => DateTime.parse(dateString);
  final String dateString;

  @override
  String get imageUrl => image;

  @override
  String get status => "نشط";

  @override
  ListingTypeTabs get type => ListingTypeTabs.daily;
}

List<FeaturedAdModel> getFeaturedAds(BuildContext context) => [
  FeaturedAdModel(
    title: context.tr.featured_ad_title,
    description: context.tr.featured_ad_description,
    priceBeforeDiscount: context.tr.featured_ad_price_before_discount,
    priceAfterDiscount: context.tr.featured_ad_price_after_discount,
    image: Assets.imagesFeaturedAd,
    isLiked: false,
    dateString: '2025-07-20',
  ),
  FeaturedAdModel(
    title: context.tr.featured_ad_title,
    description: context.tr.featured_ad_description,
    priceBeforeDiscount: context.tr.featured_ad_price_before_discount,
    priceAfterDiscount: context.tr.featured_ad_price_after_discount,
    image: Assets.imagesFeaturedAd,
    isLiked: false,
    dateString: '2025-07-20',
  ),
];
