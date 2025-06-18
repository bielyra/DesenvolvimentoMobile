import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/pag2.dart'; // Supondo que Matematica() esteja aqui
import 'package:myapp/pag3.dart';
import 'package:myapp/pag4.dart';
import 'package:myapp/pag5.dart';
import 'package:myapp/pag6.dart';
import 'package:myapp/pag7.dart'; // Importe outras páginas conforme você for criando

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprende Aí',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
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

  void dropdownCallback(String? valor) {
    if (valor != null) {
      setState(() {
        materia = valor;
      });
    }
  }

  void navegarParaMateria() {
    switch (materia) {
      case 'Matemática':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Matematica()),
        );
        break;
      case 'Português':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Portugues()),
        );
        break;
      case 'Geografia':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Geografia()),
        );
        break;
      case 'História':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Historia()),
        );
        break;
      case 'Ciências':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Ciencias()),
        );
        break;
      case 'Inglês':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Ingles()),
        );
        break;
      default:
        mostrarIndisponivel();
    }
  }

  void mostrarIndisponivel() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Conteúdo de $materia ainda não disponível.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        title: const Text(
          "📘 Aprende Aí",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Selecione uma matéria:",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: materia,
                onChanged: dropdownCallback,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.blue[50],
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                items: const [
                  DropdownMenuItem(
                    value: "Matemática",
                    child: Text("Matemática"),
                  ),
                  DropdownMenuItem(
                    value: "Português",
                    child: Text("Português"),
                  ),
                  DropdownMenuItem(
                    value: "Geografia",
                    child: Text("Geografia"),
                  ),
                  DropdownMenuItem(value: "História", child: Text("História")),
                  DropdownMenuItem(value: "Ciências", child: Text("Ciências")),
                  DropdownMenuItem(value: "Inglês", child: Text("Inglês")),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: navegarParaMateria,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
