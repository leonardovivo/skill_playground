class LoggerService {
  void log(String message) {
    final now = DateTime.now();
    print('[${now.toIso8601String()}] $message');
  }
}
