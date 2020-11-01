import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:qrlab/locale/translations.dart';
import 'package:qrlab/routes.dart';
import 'package:qrlab/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(153, 204, 51, 1.0),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: [Locale('pt', 'BR')],
      locale: Locale('pt','BR'),
      getPages: Routes.routes(),
      translations: QRTranslations(),
      title: 'QR Lab',
      theme: QRTheme.theme,
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
