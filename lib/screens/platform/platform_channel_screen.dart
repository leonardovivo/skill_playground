import 'package:flutter/material.dart';
import 'package:skill_playground/services/native_service.dart';

class PlatformChannelScreen extends StatefulWidget {
  const PlatformChannelScreen({super.key});

  @override
  State<PlatformChannelScreen> createState() => _PlatformChannelScreenState();
}

class _PlatformChannelScreenState extends State<PlatformChannelScreen> {
  String _message = 'Nenhuma mensagem recebida';

  final NativeService _nativeService = NativeService();

  void _getMessage() async {
    final message = await _nativeService.getNativeMessage();
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text(
            'Platform Channel',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: _getMessage,
                icon: Icon(Icons.phone_android),
                label: const Text('Obter mensagem nativa'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
