import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/generated/assets.dart';

class OfferModel {
  OfferModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.offerStatus,
  });
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String offerStatus;
}

List<OfferModel> getOffers(BuildContext context) => [
  OfferModel(
    id: '1',
    title: context.tr.offer_title,
    description: context.tr.offer_description,
    imageUrl: Assets.imagesOffer1,
    offerStatus: context.tr.available,
  ),
  OfferModel(
    id: '2',
    title: context.tr.offer_title,
    description: context.tr.offer_description,
    imageUrl: Assets.imagesOffer2,
    offerStatus: context.tr.unavailable,
  ),
  OfferModel(
    id: '3',
    title: context.tr.offer_title,
    description: context.tr.offer_description,
    imageUrl: Assets.imagesOffer3,
    offerStatus: context.tr.available,
  ),
  OfferModel(
    id: '4',
    title: context.tr.offer_title,
    description: context.tr.offer_description,
    imageUrl: Assets.imagesOffer4,
    offerStatus: context.tr.unavailable,
  ),
];
