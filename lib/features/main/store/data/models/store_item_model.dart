import 'package:flutter/material.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/generated/assets.dart';

class StoreItemModel {
  StoreItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.priceAfterDiscount,
    required this.date,
    required this.imageUrl,
    required this.priceBeforeDiscount,
    required this.deliveryStatus,
    this.isLiked = false,
  });

  final String id;
  final String title;
  final String description;
  final String priceBeforeDiscount;
  final String priceAfterDiscount;
  final String deliveryStatus;
  bool isLiked = false;
  final DateTime date;
  final String imageUrl;

  String get formattedPrice => 'رس $priceAfterDiscount';

  String get formattedDate => '${date.day}-${date.month}-${date.year}';

  static List<StoreItemModel> getDummyStoreItems({BuildContext? context}) {
    return [
      StoreItemModel(
        id: '1',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '2',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem2,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '3',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '4',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '5',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '6',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '7',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
      StoreItemModel(
        id: '8',
        title: context?.tr.store_item_title ?? 'غسالة 1500W',
        description:
            context?.tr.store_item_description ??
            'هي غسالة احدث طراز لعام 2025',
        priceAfterDiscount:
            context?.tr.store_item_price_after_discount ?? '200',
        date: DateTime(2025, 7, 20),
        imageUrl: Assets.imagesStoreItem1,
        priceBeforeDiscount:
            context?.tr.store_item_price_before_discount ?? '300',
        deliveryStatus: context?.tr.up_for_auction ?? 'Up For Auction',
      ),
    ];
  }
}
