import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function(String screen)? onTap;

  const HomeScreen({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final topics = [
      {'title': 'CustomPainter', 'screen': 'custom_painter'},
      {'title': 'flutter_bloc', 'screen': 'bloc'},
      {'title': 'Platform Channel', 'screen': 'platform'},
      {'title': 'Performance', 'screen': 'performance'},
      {'title': 'Async Isolates', 'screen': 'isolates'},
      {'title': 'Animation Controller', 'screen': 'animation_controller'},
      {'title': 'Stream Builder', 'screen': 'stream_builder_error'},
      {'title': 'Custom Slivers', 'screen': 'custom_slivers'},
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: const Text(
            'Skill Playground',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: topics.length,
          itemBuilder: (context, index) {
            final topic = topics[index];
            return Card(
              child: ListTile(
                title: Text(topic['title']!),
                onTap: () => onTap?.call(topic['screen']!),
              ),
            );
          },
        ),
      ),
    );
  }
}
