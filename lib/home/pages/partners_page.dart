import 'package:flutter/material.dart';
import 'package:website/home/widgets/header.dart';

class PartnersPage extends StatelessWidget {
  const PartnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(),
      body: const Center(
        child: Text('Parcerias', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
