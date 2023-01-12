import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';

final localeStateProvider =
    StateNotifierProvider<LocaleState, Locale>((ref) => LocaleState());

class LocaleState extends StateNotifier<Locale> {
  LocaleState() : super(S.delegate.supportedLocales.first);

  List<Locale> get supportedLocales => S.delegate.supportedLocales;

  Future<void> setLocale(Locale locale) async {
    await S.load(locale);
    state = locale;
  }
}
