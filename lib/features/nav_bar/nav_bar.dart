import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/extensions/context_extensions.dart';
import 'package:taskora/core/extensions/theme_extensions.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/service/location_service.dart';
import 'package:taskora/core/shared/widgets/custom_app_bar.dart';
import 'package:taskora/core/shared/widgets/default_dialog.dart';
import 'package:taskora/features/main/home/presentation/views/home_view.dart';
import 'package:taskora/features/main/offers/presentation/views/offers_view.dart';
import 'package:taskora/features/main/requests/presentation/views/requests_view.dart';
import 'package:taskora/features/main/settings/presentation/views/settings_view.dart';
import 'package:taskora/features/main/store/presentation/views/store_view.dart';
import 'package:taskora/generated/assets.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late Future<String> _locationFuture;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _locationFuture = _getLocation();
  }

  Future<String> _getLocation() async {
    final cached = await CacheHelper.getData(CacheConstants.userLocation);

    if (cached != null && cached is String && cached.isNotEmpty) {
      return cached;
    }

    final locationService = di<LocationService>();
    final location = await locationService.getReadableLocation();

    await CacheHelper.setData(CacheConstants.userLocation, location);
    return location;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (shouldClose, value) async {
        shouldClose =
            await showDialog<bool>(
              context: context,
              builder: (context) => DefaultAlertDialog(
                title: context.tr.areYouSureYouWantToCloseTheApp,
                btn1: context.tr.common_yes,
                btn2: context.tr.common_no,
                onPressed1: () {
                  context.pop(true);
                  SystemNavigator.pop();
                },
                onPressed2: () => context.pop(false),
              ),
            ) ??
            false;
      },
      child: Scaffold(
        body: Center(
          child: IndexedStack(
            index: _selectedIndex,
            children: const [
              HomeView(),
              RequestsView(),
              OffersView(),
              StoreView(),
              SettingsView(),
            ],
          ),
        ),
        appBar: CustomAppBar(locationFuture: _locationFuture),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: context.customColors.secondaryWhite,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: context.customColors.secondaryWhite,
              icon: SvgPicture.asset(Assets.svgsInactiveHome),
              activeIcon: SvgPicture.asset(Assets.svgsActiveHome),
              label: context.tr.home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svgsInactiveRequests),
              activeIcon: SvgPicture.asset(Assets.svgsActiveRequests),
              label: context.tr.requests,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svgsInactiveOffers),
              activeIcon: SvgPicture.asset(Assets.svgsActiveOffers),
              label: context.tr.offers,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svgsInactiveStore),
              activeIcon: SvgPicture.asset(Assets.svgsActiveStore),
              label: context.tr.store,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.svgsInactiveSettings),
              activeIcon: SvgPicture.asset(Assets.svgsActiveSettings),
              label: context.tr.settings,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: context.customColors.primaryBlue,
          unselectedItemColor: context.customColors.secondaryBlack.shade300,
        ),
      ),
    );
  }
}
