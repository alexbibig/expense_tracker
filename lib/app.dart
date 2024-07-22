import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white30,
        child: const Column(
          children: [
            Text('The chart'),
            Text('Expenses list ...'),
          ],
        ),
      ),
    );
  }
}
