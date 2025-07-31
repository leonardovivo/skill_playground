import 'package:flutter/material.dart';
import 'package:skill_playground/screens/home/home_screen.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(const SkillPlayground());
}

class SkillPlayground extends StatelessWidget {
  const SkillPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Playground',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const HomeScreen(),
    );
  }
}
