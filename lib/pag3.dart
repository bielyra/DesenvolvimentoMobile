import 'package:flutter/material.dart';



class Geografia extends StatefulWidget {
  const Geografia({super.key});

  @override
  State<Geografia> createState() => _GeografiaState();
}

class _GeografiaState extends State<Geografia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Geografia"),),
      body: Center(child: Text("Maconheiro"),)
    );
  }
}