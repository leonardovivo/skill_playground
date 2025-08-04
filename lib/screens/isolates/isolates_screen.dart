import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../../services/heavy_task.dart';

class IsolatesScreen extends StatefulWidget {
  const IsolatesScreen({super.key});

  @override
  State<IsolatesScreen> createState() => _IsolatesScreenState();
}

class _IsolatesScreenState extends State<IsolatesScreen> {
  int? result;
  bool isLoading = false;

  Future<void> _startComputation() async {
    setState(() => isLoading = true);

    final output = await compute(heavyComputation, 100000000);

    setState(() {
      result = output;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: const Text(
            'Isolate com compute()',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _startComputation,
                      child: const Text('Iniciar Cálculo Pesado'),
                    ),
                    const SizedBox(height: 20),
                    if (result != null)
                      Text(
                        'Resultado: $result',
                        style: const TextStyle(fontSize: 20),
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
