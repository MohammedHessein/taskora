import 'package:taskora/features/cart/data/models/cart_model.dart';

class DetailsArgs {
  const DetailsArgs({
    required this.cartItem,
  });

  final CartModel cartItem;
}

class AuthArgs {
  AuthArgs({this.email, this.phone});

  final String? email;
  final String? phone;
}
