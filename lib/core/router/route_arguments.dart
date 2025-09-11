import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/features/cart/data/models/cart_model.dart';
import 'package:taskora/features/main/store/data/models/store_item_model.dart';

class DetailsArgs {
  const DetailsArgs({
    required this.detailsType,
    this.product,
    this.service,
    this.cartItem,
  });

  final StoreItemModel? product;
  final Map<String, String>? service;
  final CartModel? cartItem;
  final DetailsType detailsType;
}
