import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/generated/assets.dart';

class AuctionModel {
  AuctionModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.status,
    required this.highestBidName,
    required this.countdown,
    required this.type,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    required this.date,
    this.isFollowed = false,
    this.isFavourite = false,
  });
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String status;
  final String highestBidName;
  final Duration countdown;
  final String priceAfterDiscount;
  final String priceBeforeDiscount;
  final DateTime date;
  bool isFollowed;
  bool isFavourite;
  final AuctionTabs type;
}

List<AuctionModel> dummyAuctions() {
  return [
    AuctionModel(
      id: "1",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "جارى",
      highestBidName: "سمير احمد",
      countdown: const Duration(hours: 2, minutes: 30),
      type: AuctionTabs.all,
      priceAfterDiscount: 'رس 200',
      priceBeforeDiscount: 'رس 400',
      date: DateTime(2025, 7, 20),
    ),
    AuctionModel(
      id: "2",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "منتهى",
      highestBidName: "احمد محمد",
      countdown: Duration.zero, // Finished auction
      type: AuctionTabs.previousAuctions,
      priceAfterDiscount: 'رس 180',
      priceBeforeDiscount: 'رس 350',
      date: DateTime(2025, 7, 15),
    ),
    AuctionModel(
      id: "3",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "قريباً",
      highestBidName: "لم يبدأ بعد",
      countdown: const Duration(
        days: 2,
        hours: 5,
        minutes: 30,
      ), // Upcoming auction
      type: AuctionTabs.roamingAuctions,
      priceAfterDiscount: 'رس 220',
      priceBeforeDiscount: 'رس 450',
      date: DateTime(2025, 7, 25),
    ),
    AuctionModel(
      id: "4",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "منتهى",
      highestBidName: "فاطمة علي",
      countdown: Duration.zero,
      type: AuctionTabs.previousAuctions,
      priceAfterDiscount: 'رس 190',
      priceBeforeDiscount: 'رس 380',
      date: DateTime(2025, 7, 10),
    ),
    AuctionModel(
      id: "5",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "قريباً",
      highestBidName: "لم يبدأ بعد",
      countdown: const Duration(days: 1, hours: 8, minutes: 15),
      type: AuctionTabs.roamingAuctions,
      priceAfterDiscount: 'رس 210',
      priceBeforeDiscount: 'رس 420',
      date: DateTime(2025, 7, 22),
    ),
    AuctionModel(
      id: "6",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "جارى",
      highestBidName: "محمود حسن",
      countdown: const Duration(hours: 3, minutes: 45),
      type: AuctionTabs.all,
      priceAfterDiscount: 'رس 195',
      priceBeforeDiscount: 'رس 390',
      date: DateTime(2025, 7, 20),
    ),
    AuctionModel(
      id: "7",
      title: "غسالة 1500W",
      description: "هي غسالة احدث طراز لعام 2025",
      imageUrl: Assets.imagesLaundry,
      status: "منتهى",
      highestBidName: "نورا سالم",
      countdown: Duration.zero,
      type: AuctionTabs.previousAuctions,
      priceAfterDiscount: 'رس 200',
      priceBeforeDiscount: 'رس 400',
      date: DateTime(2025, 7, 20),
    ),
  ];
}
