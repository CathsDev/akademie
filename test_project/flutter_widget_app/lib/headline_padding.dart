import 'package:flutter/material.dart';
import 'headline.dart';

class HeadlinePadding extends StatelessWidget {
  const HeadlinePadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(top: 56, start: 8, bottom: 24),
      child: Headline(),
    );
  }
}
