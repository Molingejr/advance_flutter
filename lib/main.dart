import 'package:advance_flutter/app/app.dart';
import 'package:advance_flutter/app/di.dart';
import 'package:advance_flutter/presentation/resources/language_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initAppModule();
  runApp(EasyLocalization(
    supportedLocales: const [ENGLISH_LOCALE, ARABIC_LOCALE],
    path: ASSETS_PATH_LOCALISATIONS,
    child: Phoenix(child: MyApp()),
  ));
}
