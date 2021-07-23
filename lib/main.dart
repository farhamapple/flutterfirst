import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetList = [];
  int counter = 1;
  // Mengisi widget terlebih dahulu sebelum ditampilkan
  // Pasang di constructor
  // _MyAppState() {
  //   for (int i = 1; i <= 20; i++) {
  //     widgetList.add(Text(
  //       'Data ke - ' + i.toString(),
  //       style: TextStyle(fontSize: 50),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Apps',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi ListView'),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 20))),
                    onPressed: () {
                      setState(() {
                        widgetList.add(Text('Data ke - ' + counter.toString(),
                            style: TextStyle(fontSize: 50)));
                        counter++;
                      });
                    },
                    child: const Text('Tambah Data'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        textStyle:
                            MaterialStateProperty.all(TextStyle(fontSize: 20))),
                    onPressed: () {
                      setState(() {
                        widgetList.removeLast();
                        counter--;
                      });
                    },
                    child: const Text('Hapus Data'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgetList,
              )
            ],
          )),
    );
  }
}
