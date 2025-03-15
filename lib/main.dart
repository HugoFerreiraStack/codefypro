import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/home/bindings/home_binding.dart';
import 'package:website/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialBinding: HomeBinding(),
      home: const HomePage(),
    );
  }
}
