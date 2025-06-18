import 'package:flutter/material.dart';

class Ciencias extends StatefulWidget {
  const Ciencias({super.key});

  @override
  State<Ciencias> createState() => _CienciasState();
}

class _CienciasState extends State<Ciencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ciências"),),
      body: Center(child: Text("Maconheiro"),)
    );
  }
}