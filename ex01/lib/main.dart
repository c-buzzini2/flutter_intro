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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String msg1 = "Welcome to my first mobile app :)";
  final String msg2 = "Hello, world!";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _curr_msg = "Welcome to my first mobile app :)";

  void _changeMsg() {
    setState(() {
      _curr_msg == widget.msg1 ? _curr_msg = widget.msg2 : _curr_msg = widget.msg1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('$_curr_msg'),
						ElevatedButton(
        			onPressed: () {_changeMsg();},
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
