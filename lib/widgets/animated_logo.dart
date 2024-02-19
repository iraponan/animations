import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo(this.animation, {super.key}) : super(listenable: animation);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }

}