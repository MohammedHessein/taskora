import 'package:taskora/generated/assets.dart';

class AuctionCommentModel {
  const AuctionCommentModel({
    required this.name,
    required this.imageUrl,
    required this.commentText,
    required this.timeAgo,
  });

  final String name;
  final String imageUrl;
  final String commentText;
  final String timeAgo;
}

const List<AuctionCommentModel> dummyComments = [
  AuctionCommentModel(
    name: "احمد عبد السلم",
    imageUrl: Assets.imagesReviewImage,
    commentText: "تعليق المزاد مباشر مع البائع",
    timeAgo: "الآن",
  ),
  AuctionCommentModel(
    name: "عبد الله الجميل",
    imageUrl: Assets.imagesReviewImage,
    commentText: "تعليق المزاد مباشر مع البائع",
    timeAgo: "الآن",
  ),
];
