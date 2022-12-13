import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ContainerAnimationScreen extends StatefulWidget {
  const ContainerAnimationScreen({super.key});

  @override
  State<ContainerAnimationScreen> createState() =>
      _ContainerAnimationScreenState();
}

class _ContainerAnimationScreenState extends State<ContainerAnimationScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(20),
                  duration: Duration(milliseconds: 350),
                  height: 100,
                  width: (_selectedIndex == index) ? 100 : 50,
                  color:
                      (_selectedIndex == index) ? Colors.green : Colors.amber,
                  child: AnimatedScale(
                    scale: (_selectedIndex == index) ? 1 : 0,
                    duration: Duration(milliseconds: 300),
                    child: Text("Red"),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
