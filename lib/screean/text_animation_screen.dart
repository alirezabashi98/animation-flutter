import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextAnimationScreen extends StatefulWidget {
  const TextAnimationScreen({super.key});

  @override
  State<TextAnimationScreen> createState() => _TextAnimationScreenState();
}

class _TextAnimationScreenState extends State<TextAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("alirezaBahi"),
      ),
    );
  }
}
