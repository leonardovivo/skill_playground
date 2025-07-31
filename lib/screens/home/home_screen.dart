import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> topics = const [
    {'title': 'CustomPainter', 'route': '/custom_painter'},
    {'title': 'Navigator 2.0', 'route': '/router'},
    {'title': 'Bloc', 'route': '/bloc'},
    {'title': 'Platform Channels', 'route': '/platform'},
    {'title': 'Performance', 'route': '/performance'},
    {'title': 'Isolates', 'route': '/isolates'},
    {'title': 'AnimationController', 'route': '/animation'},
    {'title': 'StreamBuilder', 'route': '/stream_builder'},
    {'title': 'Slivers', 'route': '/slivers'},
    {'title': 'Dependency Injection', 'route': '/di'},
  ];

  @override
  Widget build(BuildContext context) {
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
                title: Text(topic['title']),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Abrir ${topic['title']}')),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
