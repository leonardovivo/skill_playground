import 'package:flutter/material.dart';
import 'package:skill_playground/services/stream_service.dart';

class StreamScreen extends StatelessWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 163, 174),
          centerTitle: true,
          title: const Text(
            'StreamBuilder + Error',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: StreamBuilder<int>(
            stream: generateNumberWithError(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 40),
                    const SizedBox(height: 10),
                    Text(
                      'Erro: ${snapshot.error}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                );
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              if (snapshot.hasData) {
                return Text(
                  'Número: ${snapshot.data}',
                  style: const TextStyle(fontSize: 30),
                );
              }

              return const Text('Stream finalizada');
            },
          ),
        ),
      ),
    );
  }
}
