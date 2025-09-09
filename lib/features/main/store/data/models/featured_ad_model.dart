import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/generated/assets.dart';

class FeaturedAdModel {
  FeaturedAdModel({
    required this.title,
    required this.description,
    required this.priceBeforeDiscount,
    required this.priceAfterDiscount,
    required this.image,
    required this.isLiked,
    required this.date,
  });

  final String title;
  final String description;
  final String priceBeforeDiscount;
  final String priceAfterDiscount;
  final String image;
  bool isLiked;
  final String date;
}

List<FeaturedAdModel> getFeaturedAds(BuildContext context) => [
  FeaturedAdModel(
    title: context.tr.featured_ad_title,
    description: context.tr.featured_ad_description,
    priceBeforeDiscount: context.tr.featured_ad_price_before_discount,
    priceAfterDiscount: context.tr.featured_ad_price_after_discount,
    image: Assets.imagesFeaturedAd,
    isLiked: false,
    date: '20-7-2025',
  ),
  FeaturedAdModel(
    title: context.tr.featured_ad_title,
    description: context.tr.featured_ad_description,
    priceBeforeDiscount: context.tr.featured_ad_price_before_discount,
    priceAfterDiscount: context.tr.featured_ad_price_after_discount,
    image: Assets.imagesFeaturedAd,
    isLiked: false,
    date: '20-7-2025',
  ),
  FeaturedAdModel(
    title: context.tr.featured_ad_title,
    description: context.tr.featured_ad_description,
    priceBeforeDiscount: context.tr.featured_ad_price_before_discount,
    priceAfterDiscount: context.tr.featured_ad_price_after_discount,
    image: Assets.imagesFeaturedAd,
    isLiked: false,
    date: '20-7-2025',
  ),
];
