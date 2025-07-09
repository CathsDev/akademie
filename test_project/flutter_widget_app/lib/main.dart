import 'package:flutter/material.dart';

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
              Padding(
                padding: EdgeInsetsGeometry.directional(
                  top: 56,
                  start: 8,
                  bottom: 24,
                ),
                child: Text(
                  'Hello App Akademie!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    color: Colors.red,
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        height: 24,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Text(
                            'A',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    color: Colors.green,
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        height: 24,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Text(
                            'B',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Container(
                        height: 24,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Text(
                            'C',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Icon(Icons.face, size: 30),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Icon(Icons.face, size: 30.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
