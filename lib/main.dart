import 'package:dice_application/controller/dicescree_controller.dart';
import 'package:dice_application/view/dicescreen/dice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DicescreeController(),
        child: MaterialApp(home: Dice()));
  }
}
