import 'package:flutter/material.dart';
import 'dart:math';

class RandomColor with ChangeNotifier {
  Color randColor = Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
      Random().nextInt(255), Random().nextInt(255));

  Color get randColor1 => randColor;

  void getRandomColor() {
    randColor = Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255));
    notifyListeners();
  }
}
