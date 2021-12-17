import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const TheNewYorkTimes());
}

class TheNewYorkTimes extends StatelessWidget {
  const TheNewYorkTimes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'The New York Times',
      home: Home(),
    );
  }
}
