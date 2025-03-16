import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/themes/app_colors.dart';

class HeaderBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderBar({super.key, required this.appBarSize});

  final Size appBarSize;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        color: AppColors.headerColor,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png',
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Início',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
              
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Aplicativos',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
           
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Contato',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => appBarSize;
}
