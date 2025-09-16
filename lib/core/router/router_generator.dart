import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskora/core/router/routes.dart';
import 'package:taskora/features/ads/presentation/views/ad_details_view.dart';
import 'package:taskora/features/ads/presentation/views/add_ad_details_view.dart';
import 'package:taskora/features/ads/presentation/views/ads_view.dart';
import 'package:taskora/features/auctions/presentation/views/add_auctions_details_view.dart';
import 'package:taskora/features/auth/login/presentation/pages/login_view.dart';
import 'package:taskora/features/auth/register/presentation/pages/register_view.dart';
import 'package:taskora/features/auth/verify_account/presentation/pages/verify_account_view.dart';
import 'package:taskora/features/booking/presentation/views/first_step_booking_view.dart';
import 'package:taskora/features/booking/presentation/views/second_step_booking_view.dart';
import 'package:taskora/features/booking/presentation/views/third_step_booking_view.dart';
import 'package:taskora/features/cart/presentation/views/cart_view.dart';
import 'package:taskora/features/details/presentation/views/details_view.dart';
import 'package:taskora/features/gifts/presentation/views/gifts_view.dart';
import 'package:taskora/features/gifts/presentation/views/send_gift_view.dart';
import 'package:taskora/features/listings/presentation/views/add_listing_view.dart';
import 'package:taskora/features/main/settings/presentation/views/about_app_view.dart';
import 'package:taskora/features/main/settings/presentation/views/privacy_policy_view.dart';
import 'package:taskora/features/main/settings/presentation/views/technical_support_view.dart';
import 'package:taskora/features/nav_bar/nav_bar.dart';
import 'package:taskora/features/packages/presentation/views/packages_view.dart';
import 'package:taskora/features/services/presentation/views/services_page.dart';
import 'package:taskora/main_view.dart';
import 'package:universal_platform/universal_platform.dart';

class AppRouters {
  static Route? routeGenerator(RouteSettings settings) {
    final isIOS = UniversalPlatform.isIOS;
    switch (settings.name) {
      case Routes.mainView:
        return _buildRoute(const MainView(), isIOS, settings);
      case Routes.login:
        return _buildRoute(const LoginView(), isIOS, settings);
      case Routes.register:
        return _buildRoute(const RegisterView(), isIOS, settings);
      case Routes.verifyAccount:
        return _buildRoute(const VerifyAccountView(), isIOS, settings);
      case Routes.navBar:
        return _buildRoute(const NavBar(), isIOS, settings);
      case Routes.services:
        return _buildRoute(const ServicesPage(), isIOS, settings);
      case Routes.cart:
        return _buildRoute(const CartView(), isIOS, settings);
      case Routes.aboutApp:
        return _buildRoute(const AboutAppView(), isIOS, settings);
      case Routes.privacyPolicy:
        return _buildRoute(const PrivacyPolicyView(), isIOS, settings);
      case Routes.technicalSupport:
        return _buildRoute(const TechnicalSupportView(), isIOS, settings);
      case Routes.details:
        return _buildRoute(const DetailsView(), isIOS, settings);
      case Routes.gifts:
        return _buildRoute(const GiftsView(), isIOS, settings);
      case Routes.sendGift:
        return _buildRoute(const SendGiftView(), isIOS, settings);
      case Routes.firstStepBooking:
        return _buildRoute(const FirstStepBookingView(), isIOS, settings);
      case Routes.secondStepBooking:
        return _buildRoute(const SecondStepBookingView(), isIOS, settings);
      case Routes.thirdStepBooking:
        return _buildRoute(const ThirdStepBookingView(), isIOS, settings);
      case Routes.packages:
        return _buildRoute(const PackagesView(), isIOS, settings);
      case Routes.addListing:
        return _buildRoute(const AddListingView(), isIOS, settings);
      case Routes.addAdDetails:
        return _buildRoute(const AddAdDetailsView(), isIOS, settings);
      case Routes.addAuctionDetails:
        return _buildRoute(const AddAuctionsDetailsView(), isIOS, settings);
      case Routes.adDetails:
        return _buildRoute(const AdDetailsView(), isIOS, settings);
      case Routes.ads:
        return _buildRoute(const AdsView(), isIOS, settings);

      default:
        return null;
    }
  }

  static Route<dynamic> _buildRoute(
    Widget widget,
    bool isIOS,
    RouteSettings settings,
  ) {
    return isIOS
        ? CupertinoPageRoute(
            builder: (BuildContext context) => widget,
            settings: settings,
          )
        : MaterialPageRoute(
            builder: (BuildContext context) => widget,
            settings: settings,
          );
  }
}
