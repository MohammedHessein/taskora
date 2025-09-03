import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskora/core/constants/api_constants.dart';
import 'package:taskora/core/constants/ui_constants.dart';
import 'package:taskora/core/dependency_injection/injector.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/shared/cubits/app_cubit/app_cubit.dart';
import 'package:taskora/core/shared/cubits/app_cubit/app_states.dart';
import 'package:taskora/core/theme/app_colors.dart';
import 'package:taskora/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Future<String?> _checkAutoLogin() async {
    final seenOnboarding =
        await CacheHelper.getData(UiConstants.seenOnboarding) as bool? ?? false;

    if (!seenOnboarding) {
      return "ONBOARDING";
    }

    final token = await CacheHelper.getSecuredString(
      ApiConstants.accessTokenKey,
    );

    if (token != null && token.isNotEmpty) {
      return "HOME";
    }

    return "LOGIN";
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<AppCubit>(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          state.maybeWhen(
            initial: () {},
            loggedIn: () {},
            noCredentials: () {},
            orElse: () {},
          );
        },
        builder: (context, state) {
          return FutureBuilder<String?>(
            future: _checkAutoLogin(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryBlue,
                    ),
                  ),
                );
              }
              return HomeView();

              // switch (snapshot.data) {
              //   case "ONBOARDING":
              //     return const OnboardingView();
              //   case "HOME":
              //     return const NavBar();
              //   case "LOGIN":
              //   default:
              //     return BlocProvider(
              //       create: (context) => di<LoginCubit>(),
              //       child: const LoginView(),
              //     );
              //}
            },
          );
        },
      ),
    );
  }
}
