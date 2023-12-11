import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform_info/platform_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Неизвестно';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  /// Так как платформенные вызовы асинхронны, мы ожидаем получения информации.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Платформенные вызовы завершится с ошибкой, поэтому здесь используется
    // блок try/on PlatformException.
    try {
      platformVersion =
          await PlatformInfo.getPlatformVersion() ?? 'Неизвестная версия платформы';
    } on PlatformException {
      platformVersion = 'Не удалось получить версию платформы.';
    }

    // Если виджет был удален из дерева во время выполнения асинхронной функции
    // - выходим из нее.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Запущено на: $_platformVersion\n'),
        ),
      ),
    );
  }
}

