import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: StartScreen()));
}

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var random = new Random();
  int taps=0;
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: Text("Random colors"),
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => setState((){ color = randomColor();taps++;}),
          child: Center(
            child: Text("Hi There! u put $taps taps",style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),

        ));
    taps++;
  }

  Color randomColor() {
    return Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
