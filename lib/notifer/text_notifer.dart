import 'package:flutter/material.dart';

class TextChange extends ChangeNotifier {
  String _text = "Hi Common Text";

  //gatter
  String get text => _text;

  //set variable
  void updateText(String text) {
    _text = text;
    notifyListeners();
  }
}
