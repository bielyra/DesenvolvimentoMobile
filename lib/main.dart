import 'package:flutter/material.dart';
import 'package:myapp/pag2.dart'; // Matemática
import 'package:myapp/pag3.dart'; // Português
import 'package:myapp/pag4.dart'; // Geografia
import 'package:myapp/pag5.dart'; // História
import 'package:myapp/pag6.dart'; // Ciências
import 'package:myapp/pag7.dart'; // Inglês

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprende Aí',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'ComicSansMS', // Use uma fonte divertida (adicione no pubspec se quiser)
      ),
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Matematica()));
        break;
      case 'Português':
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Portugues()));
        break;
      case 'Geografia':
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Geografia()));
        break;
      case 'História':
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Historia()));
        break;
      case 'Ciências':
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Ciencias()));
        break;
      case 'Inglês':
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Ingles()));
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
      backgroundColor: const Color(0xFFFFF3E0), // Cor pastel clara
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFB74D),
        title: const Text(
          "📘 Aprende Aí!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://raw.githubusercontent.com/bielyra/projeto_PLP/refs/heads/main/Remove_background_project_3.png',
                height: 180,
              ),
              const SizedBox(height: 16),
              const Text(
                "Olá! Vamos aprender brincando? 🎉",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Escolha sua matéria favorita:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                dropdownColor: Colors.orange[100],
                value: materia,
                onChanged: dropdownCallback,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.orange[100],
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                items: const [
                  DropdownMenuItem(value: "Matemática", child: Text("📐 Matemática")),
                  DropdownMenuItem(value: "Português", child: Text("📖 Português")),
                  DropdownMenuItem(value: "Geografia", child: Text("🌍 Geografia")),
                  DropdownMenuItem(value: "História", child: Text("🏰 História")),
                  DropdownMenuItem(value: "Ciências", child: Text("🔬 Ciências")),
                  DropdownMenuItem(value: "Inglês", child: Text("🗣️ Inglês")),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: navegarParaMateria,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                ),
                icon: const Icon(Icons.play_arrow),
                label: const Text(
                  "Começar",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
