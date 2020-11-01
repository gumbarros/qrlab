import 'package:get/get.dart';
import 'package:qrlab/views/resultView.dart';
import 'package:qrlab/views/scannerView.dart';
import 'package:qrlab/views/settingsView.dart';
import 'views/generatorView.dart';
import 'views/homeView.dart';

class Routes {
  static List<GetPage> routes() {
    return [
      GetPage(name: '/home', page: () => HomeView()),
      GetPage(name: '/generator', page: () => GeneratorView()),
      GetPage(name: '/result', page: () => ResultView(),),
      GetPage(name: '/scanner', page: () => ScannerView(),),
      GetPage(name: '/settings', page: () => SettingsView(),),
    ];
  }
  }