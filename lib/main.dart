import 'package:flutter/material.dart';

const goldenAle = Color(0xFFFFC857);
const deepGoldenHue = Color(0xFFDAA520);
const crispLager = Color(0xFFFFEBC1);
const hopGreen = Color(0xFF7BA05B);
const sunsetAmber = Color(0xFFFF8C00);
const frothyCream = Color(0xFFFFFBEA);
const barrelBrown = Color(0xFF6B4D35);

final brewitTheme = ThemeData(
  primaryColor: goldenAle,
  hintColor: sunsetAmber,
  scaffoldBackgroundColor: frothyCream,
);

final brewitTextTheme = Typography.material2021().black.copyWith(
      displayLarge: const TextStyle(
          color: barrelBrown, fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: const TextStyle(color: barrelBrown, fontSize: 24),
      bodyLarge: const TextStyle(color: barrelBrown, fontSize: 18),
      bodyMedium: const TextStyle(color: barrelBrown, fontSize: 16),
    );

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: goldenAle),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
