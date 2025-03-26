import 'package:flutter/material.dart';
import 'package:website/home/widgets/header.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: const Center(
        child: Text('Suporte', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}