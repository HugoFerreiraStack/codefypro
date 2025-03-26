import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/home/bindings/header_binding.dart';
import 'package:website/home/bindings/home_binding.dart';
import 'package:website/home/pages/home_page.dart';
import 'package:website/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       initialBinding: HomeBinding(),
//       home: const HomePage(),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      initialRoute: 'home',
      getPages: AppPages.pages,
      initialBinding: HeaderBinding(), // <- Adicione esta linha
    );
  }
}
