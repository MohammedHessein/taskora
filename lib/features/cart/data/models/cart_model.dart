class CartModel {
  CartModel({
    required this.name,
    required this.brand,
    required this.quantity,
    required this.price,
  });

  final String name;
  final String brand;
  int quantity;
  final double price;
  bool isFavorite = false;
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
