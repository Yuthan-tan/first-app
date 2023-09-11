import 'package:flutter/material.dart';
import 'widget/gradient.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 23, 5, 5),
          Color.fromARGB(255, 142, 74, 74),
        ),
      ),
    ),
  );
}
