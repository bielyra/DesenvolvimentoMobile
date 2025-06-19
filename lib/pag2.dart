import 'dart:math';
import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:myapp/dados.dart';
import 'dados.dart';


class Matematica extends StatefulWidget {
  const Matematica({super.key});

  @override
  _MatematicaState createState() =>
      _MatematicaState();
}

class _MatematicaState extends State<Matematica> {
  bool _showFirst = true; // Track which widget to display
  var randommath = Random().nextInt(10);
  void randomizermath(){
    setState(() {
      var randommath2 = Random().nextInt(10);
      if(randommath2 != randommath){
        randommath = randommath2;
      }
      else{
        randomizermath();
      }     
    });
  }

  void _toggleWidgets() {
    setState(() {
      _showFirst = !_showFirst; // Toggle between two widgets
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matemática'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcherPlus.flipY(
              duration: Duration(seconds: 1), // Animation duration
              child: _showFirst
                  ? Container(
                      key: ValueKey<int>(1), // Unique key for the first widget
                      width: 200,
                      height: 250,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          perguntasMath[randommath],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      key: ValueKey<int>(2), // Unique key for the second widget
                      width: 200,
                      height: 250,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          respostasMath[randommath],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleWidgets,
              child: Text('Ver Resposta'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: randomizermath,
              child: Text('Próxima Pergunta'),
            ),
          ],
        ),
      ),
    );
  }
}