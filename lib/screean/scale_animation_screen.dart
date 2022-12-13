import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScaleAnimationScreen extends StatefulWidget {
  const ScaleAnimationScreen({super.key});

  @override
  State<ScaleAnimationScreen> createState() => _ScaleAnimationScreenState();
}

class _ScaleAnimationScreenState extends State<ScaleAnimationScreen> {
  double scale = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          scale: scale,
          curve: Curves.ease,
          duration: Duration(seconds: 2),
          child: GestureDetector(
            onTap: () {
              setState(() {
                ++scale;
              });
            },
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("images/khiyar.png"),
            ),
          ),
        ),
      ),
    );
  }
}
