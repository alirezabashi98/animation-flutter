import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostionAnimationScreen extends StatefulWidget {
  const PostionAnimationScreen({super.key});

  @override
  State<PostionAnimationScreen> createState() => _PostionAnimationScreenState();
}

class _PostionAnimationScreenState extends State<PostionAnimationScreen> {
  double top = 70;
  double left = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.ease,
            top: top,
            left: left,
            duration: Duration(seconds: 1),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  top += 60;
                  left += 20;
                });
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("images/khiyar.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
