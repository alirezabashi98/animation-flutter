import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OpacityAnimationScreen extends StatefulWidget {
  const OpacityAnimationScreen({super.key});

  @override
  State<OpacityAnimationScreen> createState() => _OpacityAnimationScreenState();
}

class _OpacityAnimationScreenState extends State<OpacityAnimationScreen> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: opacity,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity == 1 ? opacity = 0 : opacity = 1;
                });
              },
              child: Text("Click To Fade"),
            ),
          ],
        ),
      ),
    );
  }
}
