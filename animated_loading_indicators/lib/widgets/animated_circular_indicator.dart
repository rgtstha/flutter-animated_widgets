import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularIndicator extends StatelessWidget {
  const AnimatedCircularIndicator({
    Key key,
    @required this.percentage,
    @required this.label,
  }) : super(key: key);

  final int percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: Duration(milliseconds: 600),
        tween: Tween<double>(begin: 0, end: percentage / 100),
        builder: (context, value, child) {
          return SizedBox(
            height: 140,
            width: 100,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        color: indicatorColor,
                        value: value,
                        backgroundColor: indicatorBackgroundColor,
                      ),
                      Center(
                        child: Text(
                          '${(value * 100).toInt()}%',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(label),
              ],
            ),
          );
        });
  }
}
