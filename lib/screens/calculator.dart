import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_flutter/components/display.dart';
import 'package:youtube_flutter/components/keyboard.dart';
import 'package:youtube_flutter/models/memory.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Display(memory.value),
          Keyboard(onPressed),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
