import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/home/controllers/home_controller.dart';
import 'package:website/home/widgets/header.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBar(),
      body: Obx(() => PageView.builder(
            controller: controller.pageController,
            itemCount: controller.images.length,
            onPageChanged: (index) {
              controller.currentImage = index;
            },
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(controller.images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          )),
    );
  }
}
