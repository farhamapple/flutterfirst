import 'package:flutter/material.dart';
import 'package:flutterfirst/halaman1.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
      ),
      body: Center(
        child: Text("Ini Halaman Home", style: TextStyle(fontSize: 50)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Halaman1();
          }));
          // Navigator.of(context)
          //     .pushReplacement(MaterialPageRoute(builder: (context) {
          //   return Halaman1();
          // }));
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
