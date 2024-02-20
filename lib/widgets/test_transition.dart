import 'package:flutter/material.dart';

class TestTransition extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  final sizeTween = Tween<double>(begin: 0, end: 300);
  final opacityTween = Tween<double>(begin: 0.1, end: 1);

  TestTransition(
      {super.key, required this.animation, required this.child,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return Opacity(
            opacity: opacityTween.evaluate(animation).clamp(0, 1.0),
            child: SizedBox(
              height: sizeTween.evaluate(animation).clamp(0, 300),
              width: sizeTween.evaluate(animation).clamp(0, 300),
              child: child,
            ),
          );
        },
        child: child,
      ),
    );
  }
}
