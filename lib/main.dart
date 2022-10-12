import 'package:flutter/material.dart';
import 'package:tacos/galery.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Galery(),
      // home:  Tacos(),
    );
  }
}
