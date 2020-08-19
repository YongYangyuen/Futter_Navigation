import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelloAllParameters {
  final String title;
  const HelloAllParameters(this.title);
}

class HelloAllScreen extends StatefulWidget {
  String title;
  HelloAllScreen({this.title});

  @override
  _HelloAllScreenState createState() => _HelloAllScreenState();
}

class _HelloAllScreenState extends State<HelloAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
