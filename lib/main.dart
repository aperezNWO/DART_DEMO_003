import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Theme Demo',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF04101d),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF007bff),
          brightness: Brightness.dark,
          primary: const Color(0xFF007bff),
          surface: const Color(0xFF04101d),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF1378dd)),
          bodyMedium: TextStyle(color: Color(0xFF1378dd)),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF052547),
        title: Text(
          widget.title,
          style: const TextStyle(color: Color(0xFF7FFFD4)), // Fixed aquamarine color
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Color(0xFF1378dd)),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF7FFFD4), // Fixed aquamarine color
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: const Color(0xFF007bff),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}