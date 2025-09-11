import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/router/route_arguments.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/core/shared/enums.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/features/cart/data/models/cart_model.dart';
import 'package:taskora/generated/assets.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    required this.item,
    super.key,
  });

  final CartModel item;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          Routes.details,
          arguments: DetailsArgs(
            cartItem: widget.item,
            detailsType: DetailsType.cartItem,
          ),
        );
        setState(() {});
      },
      child: Container(
        padding: EdgeInsets.all(16.w),
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.grey.withValues(alpha: 0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.item.name,
                          style: CustomTextStyle.kTextStyleF12.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          widget.item.isFavorite = !widget.item.isFavorite;
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          child: widget.item.isFavorite
                              ? SvgPicture.asset(
                                  Assets.svgsActiveHeart,
                                  height: 24.h,
                                  width: 24.w,
                                )
                              : SvgPicture.asset(
                                  Assets.svgsInactiveHeart,
                                  height: 24.h,
                                  width: 24.w,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.grey.withValues(alpha: 0.5),
                                    BlendMode.srcIn,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      widget.item.brand,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.item.price.toInt()} ﷼",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (widget.item.quantity > 0) {
                                widget.item.quantity--;
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: 32.w,
                              height: 32.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                  color: AppColors.primaryBlue,
                                  width: 1.5,
                                ),
                              ),
                              child: Icon(
                                Icons.remove,
                                size: 16.sp,
                                color: AppColors.primaryBlue,
                              ),
                            ),
                          ),
                          Container(
                            width: 40.w,
                            alignment: Alignment.center,
                            child: Text(
                              "${widget.item.quantity}",
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              widget.item.quantity++;
                              setState(() {});
                            },
                            child: Container(
                              width: 32.w,
                              height: 32.w,
                              decoration: BoxDecoration(
                                color: AppColors.primaryBlue,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Icon(
                                Icons.add,
                                size: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
