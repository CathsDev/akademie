import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: MyStatelessWidget()));
  }
}

class CenteredText extends StatelessWidget {
  const CenteredText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Hello World'));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hello Catrin'),
          ElevatedButton(onPressed: () {}, child: Text('Klick mich')),
        ],
      ),
    );
  }
}
