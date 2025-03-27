import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/themes/app_assets.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final PageController pageController = PageController();

  final _images = <String>[
    AppAssets.home1,
    AppAssets.home2,
    AppAssets.home3,
    AppAssets.home4,
    AppAssets.home5,
    AppAssets.home6
  ].obs;
  List<String> get images => _images;
  set images(List<String> value) => _images.addAll(value);

  final _currentImage = 0.obs;
  int get currentImage => _currentImage.value;
  set currentImage(int value) => _currentImage.value = value;

  final Rxn<Timer> _timer = Rxn<Timer>();
  Timer? get timer => _timer.value;
  set timer(Timer? value) => _timer.value = value;

  void startAutoScroll() {
    timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      if (currentImage < images.length - 1) {
        currentImage++;
      } else {
        currentImage = 0;
      }
      pageController.animateToPage(
        currentImage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void onReady() {
    super.onReady();
    startAutoScroll();
  }

  @override
  void dispose() {
    timer?.cancel();
    pageController.dispose();
    super.dispose();
  }
}
