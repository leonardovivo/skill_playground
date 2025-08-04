import 'package:flutter/material.dart';
import 'package:skill_playground/widgets/grid_animated.dart';

class PerformanceScreen extends StatelessWidget {
  const PerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: const Text(
            'RepaintBoundary',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Esquerda: sem RepaintBoundary\nDireita: com RepaintBoundary',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: GridAnimated(useRepaintBoundary: false)),
                  Expanded(child: GridAnimated(useRepaintBoundary: true)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
