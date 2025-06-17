import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pag2.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String materia = "Matemática";
  void dropdownCallback(String? valor){
    if(valor is String){
      setState(() {
        materia = valor;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("APRENDE AÍ",  ),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Matérias"),
            DropdownButton(items: [
              DropdownMenuItem(child: Text("Matemática"), value: "Matemática"),
              DropdownMenuItem(child: Text("Português"), value: "Português"),
              DropdownMenuItem(child: Text("Geografia"), value: "Geografia"),
              DropdownMenuItem(child: Text("História"), value: "História"),
              DropdownMenuItem(child: Text("Ciências"), value: "Ciências"),
              DropdownMenuItem(child: Text("Inglês"), value: "Inglês"),
            ], 
            value: materia,
            onChanged: dropdownCallback),
            ElevatedButton(onPressed: (){
              if(materia == 'Matemática'){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Matematica()),
            );
              }
              
            }, child: Text("Entrar"))
          ],
        )
      ),
    );
  }
}