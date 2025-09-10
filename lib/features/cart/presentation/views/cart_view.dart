import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/location_provider.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/shared/widgets/custom_sliver_app_bar.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/features/cart/data/models/cart_model.dart';
import 'package:taskora/features/cart/presentation/widgets/cart_item.dart';
import 'package:taskora/features/main/home/presentation/widgets/carousel_service_widget.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List<CartModel> items = cartItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              locationFuture: LocationProvider.getLocation(),
              currentTab: Tabs.home,
            ),
            SliverToBoxAdapter(child: hGap30),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final item = items[index];
                    return CartItem(
                      item: item,
                    );
                  },
                  childCount: items.length,
                ),
              ),
            ),
            SliverToBoxAdapter(child: hGap15),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    context.tr.buy,
                    style: CustomTextStyle.kTextStyleF17.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: hGap30),
            const SliverToBoxAdapter(child: CarouselServiceWidget()),
            SliverToBoxAdapter(child: hGap30),
          ],
        ),
      ),
    );
  }
}
