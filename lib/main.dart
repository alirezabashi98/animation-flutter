import 'package:flutter/material.dart';
import 'package:flutter_example_animation/screean/opacity_animation_screen.dart';
import 'package:flutter_example_animation/screean/postion_animation_screen.dart';
import 'package:flutter_example_animation/screean/rotation_animation_screen.dart';
import 'package:flutter_example_animation/screean/scale_animation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaleAnimationScreen(),
    );
  }
}
