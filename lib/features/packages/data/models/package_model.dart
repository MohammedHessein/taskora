class PackageModel {
  const PackageModel({
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.description,
    required this.extraNote,
  });
  final String title;
  final double oldPrice;
  final double newPrice;
  final String description;
  final String extraNote;
}

final List<PackageModel> dummyPackages = [
  const PackageModel(
    title: "Basic Package",
    oldPrice: 300,
    newPrice: 279,
    description: "Get SAR 300 worth of Raghwa credit for price of SAR 279",
    extraNote:
        "Earn 8% More\nValid for 30 days on all home services\nWash your car with an exterior wash only three times a month.",
  ),
  const PackageModel(
    title: "Standard Package",
    oldPrice: 500,
    newPrice: 449,
    description: "Get SAR 500 worth of Raghwa credit for price of SAR 449",
    extraNote:
        "Earn 10% More\nValid for 30 days on all home services\nUnlimited car washes per month.",
  ),
  const PackageModel(
    title: "Premium Package",
    oldPrice: 1000,
    newPrice: 899,
    description: "Get SAR 1000 worth of Raghwa credit for price of SAR 899",
    extraNote:
        "Earn 15% More\nValid for 30 days on all home services\nPremium support included.",
  ),
];
