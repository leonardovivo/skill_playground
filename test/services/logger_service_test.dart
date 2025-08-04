import 'package:flutter_test/flutter_test.dart';
import 'package:skill_playground/services/logger_service.dart';

void main() {
  test('LoggerService imprime mensagem formatada', () {
    final logger = LoggerService();

    expect(() => logger.log('Teste'), returnsNormally);
  });
}
