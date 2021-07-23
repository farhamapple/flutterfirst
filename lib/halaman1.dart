import 'package:flutter/material.dart';
import 'package:flutterfirst/home.dart';

class Halaman1 extends StatelessWidget {
  const Halaman1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Satu'),
        // leading: Container(),
      ),
      body: Center(
        child: Text("Ini Halaman Satu", style: TextStyle(fontSize: 50)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //   return Home();
          // }));
          Navigator.of(context).pop();
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
