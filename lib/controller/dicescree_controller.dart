import 'dart:math';

import 'package:flutter/material.dart';

class DicescreeController with ChangeNotifier {
  static List diceimages = [
    "assets/images/d1.jpg",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
    "assets/images/start_button.avif"
  ];
  int? random;
  onpressed() {
    random = Random().nextInt(6);
    notifyListeners();
  }
}
