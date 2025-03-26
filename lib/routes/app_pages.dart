import 'package:get/get.dart';
import 'package:website/home/bindings/home_binding.dart';
import 'package:website/home/pages/apps_page.dart';
import 'package:website/home/pages/home_page.dart';
import 'package:website/home/pages/partners_page.dart';
import 'package:website/home/pages/support_page.dart';


abstract class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: '/apps', page: () => const AppsPage()),
    GetPage(name: '/partners', page: () => const PartnersPage()),
    GetPage(name: '/support', page: () => const SupportPage()),
  ];
}
