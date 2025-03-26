import 'package:get/get.dart';
import '../controllers/header_controller.dart';
class HeaderBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HeaderController>(HeaderController());
  }
}