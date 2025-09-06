import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/service/location_service.dart';
import 'package:taskora/core/shared/widgets/gaps.dart';
import 'package:taskora/core/theme/app_colors.dart' show AppColors;
import 'package:taskora/core/theme/app_text_styles.dart';
import 'package:taskora/generated/assets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<String> _locationFuture;

  @override
  void initState() {
    super.initState();
    _locationFuture = _getLocation();
  }

  Future<String> _getLocation() async {
    // ✅ Try cache first
    final cached = await CacheHelper.getData(CacheConstants.userLocation);

    if (cached != null && cached is String && cached.isNotEmpty) {
      return cached;
    }

    // ✅ Otherwise fetch from service
    final locationService = di<LocationService>();
    final location = await locationService.getReadableLocation();

    await CacheHelper.setData(CacheConstants.userLocation, location);
    return location;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SvgPicture.asset(Assets.svgsLocation),
            wGap8,
            FutureBuilder<String>(
              future: _locationFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text(context.tr.loading);
                } else if (snapshot.hasError) {
                  return Text(context.tr.common_error);
                } else {
                  return Text(snapshot.data ?? context.tr.unknown);
                }
              },
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                SvgPicture.asset(Assets.svgsCart),
                wGap10,
                Container(
                  height: 27.h,
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.svgsWallet,
                        height: 16.h,
                        width: 22.w,
                        colorFilter: const ColorFilter.mode(
                          AppColors.grey,
                          BlendMode.srcIn,
                        ),
                      ),
                      wGap8,
                      Text(
                        '0.00',
                        style: CustomTextStyle.kTextStyleF10.copyWith(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      wGap8,
                      SvgPicture.asset(
                        Assets.svgsRiyal,
                        height: 16.h,
                        width: 14.w,
                        colorFilter: const ColorFilter.mode(
                          AppColors.grey,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
