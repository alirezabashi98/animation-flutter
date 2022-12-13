import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SwitchAnimationScreen extends StatefulWidget {
  const SwitchAnimationScreen({super.key});

  @override
  State<SwitchAnimationScreen> createState() => _SwitchAnimationScreenState();
}

class _SwitchAnimationScreenState extends State<SwitchAnimationScreen> {
  bool isSwichTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isSwichTrue = !isSwichTrue;
          });
        },
        child: Center(
          child: AnimatedSwitcher(
            duration: Duration(seconds: 2),
            child: (isSwichTrue)
                ? Image(
                    image: AssetImage("images/khiyar.png"),
                    key: Key("1"),
                  )
                : Image(
                    image: AssetImage("images/gozhe.png"),
                    key: Key("2"),
                  ),
          ),
        ),
      ),
    );
  }
}
