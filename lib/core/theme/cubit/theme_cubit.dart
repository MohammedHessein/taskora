import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  static ThemeCubit get(context) => BlocProvider.of(context);

  void updateTheme(ThemeMode newMode) {
    emit(newMode);
  }

  final String _jsonKey = 'themeMode';

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final savedMode = json[_jsonKey];
    if (savedMode == 'light') {
      return ThemeMode.light;
    } else if (savedMode == 'dark') {
      return ThemeMode.dark;
    }
    return ThemeMode.system;
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    if (state == ThemeMode.light) {
      return {_jsonKey: 'light'};
    } else if (state == ThemeMode.dark) {
      return {_jsonKey: 'dark'};
    } else {
      return {_jsonKey: 'system'};
    }
  }
}
