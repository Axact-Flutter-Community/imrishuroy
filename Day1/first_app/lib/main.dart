import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: FirstApp(),
    );
  }
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.network(
                  'http://getch.club/wp-content/uploads/2020/09/322868_1100-800x825-2.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/bulldog.jpeg'),
            )
          ],
        ),
      ),
    );
  }
}
