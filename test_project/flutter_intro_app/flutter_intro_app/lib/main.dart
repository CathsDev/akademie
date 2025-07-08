import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Titel', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color(0xff000000),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Text Column'),
              Row(children: [Text('Text Row')]),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.cyan,
                child: Text('Text Container in SizedBox'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
