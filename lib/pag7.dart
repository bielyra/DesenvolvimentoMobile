import 'package:flutter/material.dart';


class Ingles extends StatefulWidget {
  const Ingles({super.key});

  @override
  State<Ingles> createState() => _InglesState();
}

class _InglesState extends State<Ingles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inglês"),),
      body: Center(child: Text("Maconheiro"),)
    );
  }
}