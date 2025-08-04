import 'package:flutter/material.dart';
import 'package:skill_playground/screens/widgets/animated_ball.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          title: const Text(
            'AnimationController',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: const AnimatedBall(),
      ),
    );
  }
}
