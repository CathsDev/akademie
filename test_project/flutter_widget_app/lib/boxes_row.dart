import 'package:flutter/material.dart';

class BoxesRow extends StatelessWidget {
  const BoxesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                child: Text('A', style: TextStyle(color: Colors.white)),
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
                child: Text('B', style: TextStyle(color: Colors.white)),
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
                child: Text('C', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
