import 'package:get/get.dart';
import 'package:website/home/bindings/home_binding.dart';
import 'package:website/home/pages/home_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: 'home', page: () => HomePage(), binding: HomeBinding()),
  ];
}
