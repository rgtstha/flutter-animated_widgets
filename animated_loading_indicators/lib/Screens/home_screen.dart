import 'package:flutter/material.dart';

import '../widgets/animated_circular_indicator.dart';
import '../widgets/animated_linear_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedCircularIndicator(percentage: 50, label: "C++"),
                AnimatedCircularIndicator(percentage: 80, label: "JAVA"),
                AnimatedCircularIndicator(percentage: 40, label: "DART"),
              ],
            ),
            const SizedBox(height: 30),
            AnimatedLinearIndicator(percentage: 60, label: "HTML"),
            AnimatedLinearIndicator(percentage: 50, label: "CSS"),
            AnimatedLinearIndicator(percentage: 30, label: "JAVSCRIPT")
          ],
        ),
      ),
    );
  }
}
