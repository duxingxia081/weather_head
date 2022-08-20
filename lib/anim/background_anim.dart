import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/background.jpg',
      width: MediaQuery.of(context).size.width + 100,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fill,
    );
  }
}

class BackgroundTransition extends StatelessWidget {
  const BackgroundTransition(
      {super.key, required this.child, required this.animation});

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Positioned(
          left: animation.value - 50.0,
          child: child!,
        );
      },
      child: child,
    );
  }
}
