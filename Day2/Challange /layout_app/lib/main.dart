import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.transparent,
    //   appBar: AppBar(
    //     title: Text('Flutter Layout'),
    //   ),
    return Container(
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: double.infinity,
            width: 100,
            color: Colors.red,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
