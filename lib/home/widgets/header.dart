import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/header_controller.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
if (!Get.isRegistered<HeaderController>()) {
  Get.put(HeaderController());
}
final HeaderController headerController = Get.find();

    return AppBar(
      backgroundColor: Colors.black.withValues(alpha: 50),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => Get.offAllNamed('home'),
            child: Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 50,
            ),
          ),
          _buildNavItem('Início', 'home'),
          _buildNavItem('Aplicativos', 'apps'),
          // _buildNavItem('Parcerias', 'partners'),
          _buildNavItem('Suporte', 'support'),
          // const SizedBox(width: 20),
          // _buildLanguageSelector(headerController),
        ],
      ),
    );
  }

 Widget _buildNavItem(String title, String route) {
  bool isActive = Get.currentRoute == route;

  return GestureDetector(
    onTap: () {
      if (isActive) {
        Scrollable.ensureVisible(Get.context!);
      } else {
        Get.offNamed(route);
      }
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.blueGrey : Colors.white, // Altera a cor do texto
          fontSize: 18,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal, // Deixa o texto negrito na página ativa
        ),
      ),
    ),
  );
}


  // Widget _buildLanguageSelector(HeaderController controller) {
  //   return DropdownButton<String>(
  //     value: controller.selectedLanguage.value,
  //     icon: const Icon(Icons.language, color: Colors.white),
  //     dropdownColor: Colors.black,
  //     onChanged: (String? newValue) {
  //       if (newValue != null) {
  //         controller.changeLanguage(newValue);
  //       }
  //     },
  //     items: const [
  //       DropdownMenuItem(value: 'pt', child: Text('🇧🇷 PT-BR')),
  //       DropdownMenuItem(value: 'en', child: Text('🇺🇸 EN')),
  //       DropdownMenuItem(value: 'es', child: Text('🇪🇸 ES')),
  //     ],
  //   );
  // }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
