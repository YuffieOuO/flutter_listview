import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                box("1"),
                const SizedBox(
                  width: 12,
                ),
                box("2"),
                const SizedBox(
                  width: 12,
                ),
                box("3"),
                const SizedBox(
                  width: 12,
                ),
                box("4"),
                const SizedBox(
                  width: 12,
                ),
                box("5"),
                const SizedBox(
                  width: 12,
                ),
                box("6"),
                const SizedBox(
                  width: 12,
                ),
                box("7"),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ],
        ));
  }

  Widget box(String text) => Container(
        height: 20,
        color: Colors.blue,
        width: 45,
        child: Text(text),
      );
}
