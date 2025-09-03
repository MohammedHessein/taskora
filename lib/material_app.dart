import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/app_navigator.dart';
import 'package:taskora/core/constants/ui_constants.dart';
import 'package:taskora/core/router/route_logger.dart';
import 'package:taskora/core/router/router_generator.dart';
import 'package:taskora/core/theme/app_theme.dart';
import 'package:taskora/core/theme/cubit/theme_cubit.dart';
import 'package:taskora/core/utils/dimensions.dart';

import 'generated/l10n.dart';
import 'main_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({required this.currentLang, super.key});

  final Locale currentLang;

  static Future<void> setLocale(BuildContext context, Locale newLocale) async {
    final state = context.findAncestorStateOfType<_MyAppState>();
    state!.changeLanguage(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale;

  void changeLanguage(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  void initState() {
    super.initState();
    _locale = widget.currentLang;

    // Local notifications can be handled here
    // FlutterLocalNotificationsPlugin.onMessage.listen(
    //   (NotificationResponse response) {
    //     context.defaultSnackBar(
    //       title: response.payload ?? AppConstants.unknownStringValue,
    //       description: response.notificationResponseType.toString(),
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Phoenix(
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => ThemeCubit())],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, state) {
            return ScreenUtilInit(
              designSize: Size(
                Dimensions.designDeviceWidth,
                Dimensions.designDeviceHeight,
              ),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (ctx, child) {
                return MaterialApp(
                  navigatorKey: AppNavigator.navigatorKey,
                  debugShowCheckedModeBanner: false,
                  theme: AppTheme.lightTheme,
                  themeMode: state,
                  locale: _locale,
                  localizationsDelegates: const [
                    S.delegate,
                    CountryLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  title: UiConstants.appName,
                  onGenerateRoute: AppRouters.routeGenerator,
                  navigatorObservers: [RouteLogger()],
                  home: child,
                );
              },
              child: const MainView(),
            );
          },
        ),
      ),
    );
  }
}
