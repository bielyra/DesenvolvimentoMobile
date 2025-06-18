import 'package:flutter/material.dart';


class Portugues extends StatefulWidget {
  const Portugues({super.key});

  @override
  State<Portugues> createState() => _PortuguesState();
}

class _PortuguesState extends State<Portugues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Português"),),
      body: Center(child: Text("Maconheiro"),)
    );
  }
}