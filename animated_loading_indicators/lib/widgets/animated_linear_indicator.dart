import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedLinearIndicator extends StatelessWidget {
  const AnimatedLinearIndicator({
    Key key,
    @required this.percentage,
    this.label,
  }) : super(key: key);

  final int percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 600),
      tween: Tween<double>(begin: 0, end: percentage / 100),
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(label),
                  Text('${(value * 100).toInt()}%'),
                ],
              ),
              SizedBox(height: 5),
              LinearProgressIndicator(
                color: indicatorColor,
                value: value,
                backgroundColor: indicatorBackgroundColor,
              ),
            ],
          ),
        );
      },
    );
  }
}
