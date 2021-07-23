import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Pertamaku'),
          ),
          body: Container(
            color: Colors.lightBlue,
            margin: EdgeInsets.all(20),
            // margin: EdgeInsets.fromLTRB(20, 20, 20, 20), // Left Top Right Bottom
            // margin: EdgeInsets.only(bottom: 20), // Only Bottom 20
            padding: EdgeInsets.all(10),
            child: Container(
              //color: Colors.grey,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.amber, Colors.grey])),
            ),
          )),
    );
  }
}
