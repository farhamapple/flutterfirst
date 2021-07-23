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
            title: Text('List Tile'),
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(),
                title: Text('Farham Harvianto'),
                subtitle: Text('Ini adalah Pesan dari List Tile'),
                trailing: Text('10:00 PM'),
                tileColor: Colors.lightBlue,
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text('Farham Harvianto'),
                subtitle: Text(
                  'Ini adalah Pesan dari List Tile Ini adalah Pesan dari List Tile Ini adalah Pesan dari List Tile Ini adalah Pesan dari List Tile',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text('10:00 PM'),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text('Farham Harvianto'),
                subtitle: Text('Ini adalah Pesan dari List Tile'),
                trailing: Text('10:00 PM'),
                contentPadding: EdgeInsets.all(20),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text('Farham Harvianto'),
                subtitle: Text('Ini adalah Pesan dari List Tile'),
                trailing: Text('10:00 PM'),
              ),
            ],
          )),
    );
  }
}
