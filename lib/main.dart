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
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            actions: [],
            title: Text('Image Widget'),
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.lightBlue,
              child: Image(
                // fit: BoxFit .contain, // Membuat Sebuah image menyesuaikan diangka maksimumnya
                //fit: BoxFit.cover,// menyesuaikan
                fit: BoxFit.fill,
                image: AssetImage("images/gambar_1.jpg"),
                //image: NetworkImage("https://picsum.photos/350/500"),
              ),
              //child: Image.asset("images/gambar_1.jpg"),
            ),
          ),
        ));
  }
}
