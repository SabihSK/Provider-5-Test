import 'package:checkprovider/notifer/text_notifer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(context.read<TextChange>().text),
      ),
    ));
  }
}
