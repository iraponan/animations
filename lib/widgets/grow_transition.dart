import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  const GrowTransition(
      {super.key, required this.animation, required this.child,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
