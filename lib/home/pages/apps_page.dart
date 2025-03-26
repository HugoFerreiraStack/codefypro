import 'package:flutter/material.dart';
import 'package:website/home/widgets/header.dart';

class AppsPage extends StatelessWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: const Center(
        child: Text('Aplicativos', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}