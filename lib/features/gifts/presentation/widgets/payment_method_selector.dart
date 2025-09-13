import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/generated/assets.dart';

class PaymentMethodSelector extends StatefulWidget {
  const PaymentMethodSelector({super.key});

  @override
  State<PaymentMethodSelector> createState() => _PaymentMethodSelectorState();
}

class _PaymentMethodSelectorState extends State<PaymentMethodSelector> {
  int selectedIndex = -1;

  final List<Widget> _methods = [
    SvgPicture.asset(Assets.svgsApplePay, height: 24.h),
    SvgPicture.asset(Assets.svgsMada, height: 24.h),
    SvgPicture.asset(Assets.svgsVisaOrMasterCard, height: 24.h),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(_methods.length, (index) {
        final isSelected = index == selectedIndex;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() => selectedIndex = index);
            },
            child: Container(
              margin: EdgeInsets.only(
                right: index != _methods.length - 1 ? 10.w : 10.w,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 12.h,
                horizontal: index == 2 ? 0 : 10.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: isSelected
                      ? AppColors.primaryBlue
                      : AppColors.grey.shade100,
                  width: 2,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: index == 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _methods[index],
                        ],
                      )
                    : _methods[index],
              ),
            ),
          ),
        );
      }),
    );
  }
}
