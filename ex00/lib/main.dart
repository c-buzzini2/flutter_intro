import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Welcome to my first mobile app :)'),
						ElevatedButton(
        			onPressed: () {debugPrint("Button pressed");},
        			style: ElevatedButton.styleFrom(
          			backgroundColor: Theme.of(context).colorScheme.primary,
          			foregroundColor: Theme.of(context).colorScheme.onPrimary,
        			),
							child: const Text("Click here"),
						),
          ],
        ),
      ),
    );
  }
}
