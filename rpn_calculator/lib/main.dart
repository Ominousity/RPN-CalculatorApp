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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
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

class CustomButton extends ElevatedButton {
  CustomButton({
    required VoidCallback onPressed,
    required String text,
  }) : super(
          onPressed: onPressed,
          child: Text(text),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              Size(50, 20), // set the desired width and height here
            ),
          ),
        );
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        children: [
          Container(child: Text("bruh"),
            color: Colors.black,
            height: 200,
            width: (MediaQuery.of(context).size.width),
          ),
          Container(child: Text("bruh"),
            color: Colors.brown,
            height: 300,
            width: (MediaQuery.of(context).size.width),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Column(
                children: [
                  CustomButton(onPressed: () {}, text: 'AC'),
                  CustomButton(onPressed: () {}, text: '7'),
                  CustomButton(onPressed: () {}, text: '4'),
                  CustomButton(onPressed: () {}, text: '7'),
                  CustomButton(onPressed: () {}, text: '7'),
                ],
              ),
              Column(
                children: [
                  CustomButton(onPressed: () {}, child: Text("C")),
                  CustomButton(onPressed: () {}, child: Text("8")),
                  CustomButton(onPressed: () {}, child: Text("5")),
                  CustomButton(onPressed: () {}, child: Text("2")),
                  CustomButton(onPressed: () {}, child: Text("0")),
                ],
              ),
              Column(
                children: [
                  CustomButton(onPressed: () {}, child: Text("Undo")),
                  CustomButton(onPressed: () {}, child: Text("9")),
                  CustomButton(onPressed: () {}, child: Text("6")),
                  CustomButton(onPressed: () {}, child: Text("3")),
                  CustomButton(onPressed: () {}, child: Text(",")),
                ],
              ),
              Column(
                children: [
                  CustomButton(onPressed: () {}, child: Text("/")),
                  CustomButton(onPressed: () {}, child: Text("X")),
                  CustomButton(onPressed: () {}, child: Text("-")),
                  CustomButton(onPressed: () {}, child: Text("+")),
                  CustomButton(onPressed: () {}, child: Text("Enter")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
