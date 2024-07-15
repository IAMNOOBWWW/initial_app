import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Body Mass Index'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'BMI',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: wtController,
              decoration: const InputDecoration(
                  label: Text('Enter Your Weight'),
                  prefixIcon: Icon(Icons.line_weight)),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: ftController,
              decoration: const InputDecoration(
                  label: Text('Enter Your Height(in ft)'),
                  prefixIcon: Icon(Icons.height)),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: inController,
              decoration: const InputDecoration(
                  label: Text('Enter Your height(In cm)'),
                  prefixIcon: Icon(Icons.height)),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                child: const Text('calculate'),
                onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();
                  result = "";

                  if (wt != "" && ft != "" && inch != "") {
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iinch = int.parse(inch);
                    var tinch = ift * 12 + iinch;
                    var tcm = tinch * 2.54;
                    var tm = tcm / 100;
                    var bmi = iwt / (tm * tm);

                    setState(() {
                      result = "Your BMI is: $bmi ";
                    });
                  } else {
                    setState(() {
                      result =
                          const Text("Please fill all the blanks!!!") as String;
                    });
                  }
                  const Text(
                    'Calculate',
                    selectionColor: Colors.amberAccent,
                  );
                  Text(
                    result,
                    style: const TextStyle(fontSize: 16),
                  );
                })
          ]),
        ),
      ),
    );
  }
}
