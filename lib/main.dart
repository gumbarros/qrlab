import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qrlab/locale/translations.dart';
import 'package:qrlab/routes.dart';
import 'package:qrlab/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(153, 204, 51, 1.0),
  ));
  await GetStorage.init().then((_){
    runApp(GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: [Locale('pt'), Locale('en')],
      locale: _getLocale(),
      getPages: Routes.routes(),
      translations: QRTranslations(),
      title: 'app_title'.tr,
      theme: QRTheme.theme,
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    ));
  });
}

Locale _getLocale(){
  final GetStorage getStorage = new GetStorage();

  final String langCode = getStorage.read("locale");

  if(langCode.isNull){
    return new Locale('pt');
  }

  else{
    return new Locale(langCode);
  }
}


