import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        body: Center(child: neumorphism(context)),
      ),
    );
  }
}

Widget neumorphism(BuildContext context) {
  final elevation = 3.0;
  return Text(
    "Hello World",
    style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade50,
        shadows: [
          Shadow(
              color: Colors.grey.shade300,
              offset: Offset(3.0, 3.0),
              blurRadius: elevation),
          Shadow(
              color: Colors.white,
              offset: Offset(-3.0, 3.0),
              blurRadius: elevation)
        ]),
  );
}
