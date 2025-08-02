import 'package:flutter/services.dart';

class NativeService {
  static const _channel = MethodChannel('com.exemplo/native');

  Future<String> getNativeMessage() async {
    try {
      final String message = await _channel.invokeMethod('getMessage');
      return message;
    } catch (e) {
      return 'Erro ao chamar método nativo: $e';
    }
  }
}
