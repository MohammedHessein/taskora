import 'package:taskora/features/cart/data/models/cart_model.dart';

class DetailsArgs {
  const DetailsArgs({
    required this.cartItem,
  });

  final CartModel cartItem;
}
