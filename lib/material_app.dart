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
import 'package:taskora/core/shared/cubits/language_cubit/language_cubit.dart';
import 'package:taskora/core/shared/cubits/language_cubit/language_state.dart';
import 'package:taskora/core/theme/app_theme.dart';
import 'package:taskora/core/theme/cubit/theme_cubit.dart';
import 'package:taskora/core/utils/dimensions.dart';
import 'package:taskora/generated/l10n.dart';
import 'package:taskora/main_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Phoenix(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(create: (context) => LanguageCubit()),
        ],
        child: BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, languageState) {
            return BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, themeState) {
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
                      themeMode: themeState,
                      locale: languageState.locale,
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
            );
          },
        ),
      ),
    );
  }
}
