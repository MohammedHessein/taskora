class CartModel {
  CartModel({
    required this.name,
    required this.price,
    this.brand,
    this.description,
    this.imageUrl,
    this.quantity = 1,
    this.isFavorite = false,
  });
  final String name;
  final double price;
  final String? brand;
  final String? description;
  final String? imageUrl;
  int quantity;
  bool isFavorite;
}

final List<CartModel> cartItems = [
  CartModel(
    name: 'برمجة داخلية',
    brand: 'الماركة',
    quantity: 0,
    price: 200,
  ),
  CartModel(
    name: 'برمجة داخلية',
    brand: 'الماركة',
    quantity: 0,
    price: 200,
  ),
  CartModel(
    name: 'برمجة داخلية',
    brand: 'الماركة',
    quantity: 0,
    price: 200,
  ),
  CartModel(
    name: 'برمجة داخلية',
    brand: 'الماركة',
    quantity: 0,
    price: 200,
  ),
];
