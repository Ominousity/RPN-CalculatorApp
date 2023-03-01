import 'dart:ui';
import 'package:flutter/material.dart';
import 'logic.dart';

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
        primarySwatch: Colors.grey,
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

class CustomButton extends ElevatedButton {
  CustomButton({
    required VoidCallback onPressed,
    required String text,
  }) : super(
          onPressed: onPressed,
          child: Text(text),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              Size(98, 50), // set the desired width and height here
            ),
          ),
        );
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String currentNumber = "";

  Logic logic = new Logic();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void addInput(String input) {
    currentNumber = currentNumber + input;
    _incrementCounter();
  }

  void clear() {
    currentNumber = "";
    _incrementCounter();
  }

  void clearAll() {
    currentNumber = "";
    Stacks.stack = [];
    _incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 49.4,
            width: (MediaQuery.of(context).size.width),
          ),
          Container(
            child: Text(Stacks.stack.toString()),
            color: Color.fromRGBO(192, 192, 192, 1),
            height: 200,
            width: (MediaQuery.of(context).size.width),
            alignment: Alignment.center,
          ),
          Container(
            child: Text(currentNumber),
            color: Color.fromRGBO(192, 192, 192, 1),
            height: 100,
            width: (MediaQuery.of(context).size.width),
            alignment: Alignment.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CustomButton(
                      onPressed: () {
                        clearAll();
                      },
                      text: 'AC'),
                  CustomButton(
                      onPressed: () {
                        addInput("7");
                      },
                      text: '7'),
                  CustomButton(
                      onPressed: () {
                        addInput("4");
                      },
                      text: '4'),
                  CustomButton(
                      onPressed: () {
                        addInput("1");
                      },
                      text: '1'),
                  CustomButton(
                      onPressed: () {
                        addInput("no");
                      },
                      text: '?'),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      onPressed: () {
                        clear();
                      },
                      text: 'C'),
                  CustomButton(
                      onPressed: () {
                        addInput("8");
                      },
                      text: '8'),
                  CustomButton(
                      onPressed: () {
                        addInput("5");
                      },
                      text: '5'),
                  CustomButton(
                      onPressed: () {
                        addInput("2");
                      },
                      text: '2'),
                  CustomButton(
                      onPressed: () {
                        addInput("0");
                      },
                      text: '0'),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      onPressed: () {
                        addInput("no");
                      },
                      text: '?'),
                  CustomButton(
                      onPressed: () {
                        addInput("9");
                      },
                      text: '9'),
                  CustomButton(
                      onPressed: () {
                        addInput("6");
                      },
                      text: '6'),
                  CustomButton(
                      onPressed: () {
                        addInput("3");
                      },
                      text: '3'),
                  CustomButton(
                      onPressed: () {
                        addInput(".");
                      },
                      text: ','),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      onPressed: () {
                        addInput("/");
                      },
                      text: '/'),
                  CustomButton(
                      onPressed: () {
                        addInput("*");
                      },
                      text: 'X'),
                  CustomButton(
                      onPressed: () {
                        addInput("-");
                      },
                      text: '-'),
                  CustomButton(
                      onPressed: () {
                        addInput("+");
                      },
                      text: '+'),
                  CustomButton(
                      onPressed: () {
                        try {
                          logic.enterPressed(currentNumber);
                          clear();
                        } catch (e) {}
                      },
                      text: 'Enter'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
