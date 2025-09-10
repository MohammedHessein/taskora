import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:taskora/core/constants/cache_constants.dart';
import 'package:taskora/core/helpers/cache_helper.dart';
import 'package:taskora/core/shared/cubits/language_cubit/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState(locale: Locale('ar'))) {
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    final code = await CacheHelper.getData(CacheConstants.appLang);

    if (code is String && code.isNotEmpty) {
      emit(LanguageState(locale: Locale(code)));
    }
  }

  Future<void> toggleLanguage() async {
    final newLocale = state.locale.languageCode == 'ar'
        ? const Locale('en')
        : const Locale('ar');

    await setLanguage(newLocale);
  }

  Future<void> setLanguage(Locale locale) async {
    await CacheHelper.setData(CacheConstants.appLang, locale.languageCode);
    emit(LanguageState(locale: locale));
  }
}
