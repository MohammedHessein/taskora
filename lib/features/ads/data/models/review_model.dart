class ReviewModel {
  const ReviewModel({
    required this.name,
    required this.imageUrl,
    required this.reviewText,
    required this.rating,
    required this.daysAgo,
  });
  final String name;
  final String imageUrl;
  final String reviewText;
  final int rating;
  final String daysAgo;
}

const List<ReviewModel> dummyReviews = [
  ReviewModel(
    name: "Kay Swanson",
    imageUrl: "https://randomuser.me/api/portraits/men/32.jpg",
    reviewText:
        "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة. لقد تم توليد هذا النص من مولد النص العرب.",
    rating: 4,
    daysAgo: "12 Days ago",
  ),
  ReviewModel(
    name: "Sarah Johnson",
    imageUrl: "https://randomuser.me/api/portraits/women/44.jpg",
    reviewText:
        "تجربة رائعة! جودة المنتج ممتازة وخدمة التوصيل سريعة جدًا. أنصح به بشدة.",
    rating: 5,
    daysAgo: "5 Days ago",
  ),
  ReviewModel(
    name: "Mohamed Ali",
    imageUrl: "https://randomuser.me/api/portraits/men/12.jpg",
    reviewText: "الخدمة جيدة لكن التغليف لم يكن ممتاز. بشكل عام المنتج مقبول.",
    rating: 3,
    daysAgo: "20 Days ago",
  ),
];
