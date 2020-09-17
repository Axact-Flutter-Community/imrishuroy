import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Card',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Mi Card'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                'assets/images/rishu.png',
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Rishu Roy',
              style: TextStyle(
                fontFamily: 'Caveat',
                fontSize: 38,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Grow like a Pro !!',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gaegu',
                fontSize: 20,
                letterSpacing: 3,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  leading: Icon(Icons.email),
                  title: Text('rishuroy@gmail.com'),
                ),
              ),
            ),
            // SizedBox(height: 5),
            Card(
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  leading: Icon(Icons.phone),
                  title: Text('+91 8540928489'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
