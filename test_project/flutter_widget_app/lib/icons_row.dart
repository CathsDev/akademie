import 'package:flutter/material.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
