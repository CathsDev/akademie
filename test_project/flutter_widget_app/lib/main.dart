import 'package:flutter/material.dart';
import 'package:flutter_widget_app/boxes_row.dart';
import 'package:flutter_widget_app/headline_padding.dart';
import 'package:flutter_widget_app/icons_row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('Aufgabe 1'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlinePadding(),
              HeadlinePadding(),
              BoxesRow(),
              BoxesRow(),
              IconsRow(),
              IconsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
