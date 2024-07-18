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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
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
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text('3d List ')),
        body: ListWheelScrollView(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              width: double.infinity,
              color: Colors.pink,
            ),
          ],
          itemExtent: 100,
        ));
  }
}
