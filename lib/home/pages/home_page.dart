import 'package:flutter/material.dart';
import 'package:website/home/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HeaderBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.black,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Desenvolvimento de Software', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),),
              Text('Crie seu produto de forma única!',style: TextStyle(color: Colors.white60, fontSize: 28)),
            ],
          ),),
          Row(children: [
            Container(
            height: 300,
            color: Colors.black,
            )
          ],)
        ],
      )
    );
  }
}