import 'package:flutter/material.dart';


class Historia extends StatefulWidget {
  const Historia({super.key});

  @override
  State<Historia> createState() => _HistoriaState();
}

class _HistoriaState extends State<Historia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("História"),),
      body: Center(child: Text("Maconheiro"),)
    );
  }
}