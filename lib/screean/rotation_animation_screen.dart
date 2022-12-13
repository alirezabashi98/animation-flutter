import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RotationAnimationScreen extends StatefulWidget {
  const RotationAnimationScreen({super.key});

  @override
  State<RotationAnimationScreen> createState() =>
      _RotationAnimationScreenState();
}

class _RotationAnimationScreenState extends State<RotationAnimationScreen> {
  double rotate = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          curve: Curves.ease,
          turns: rotate,
          duration: Duration(seconds: 2),
          child: GestureDetector(
            onTap: () {
              setState(() {
                ++rotate;
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
