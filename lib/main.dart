import 'package:flutter/material.dart';
import 'row_collum.dart';
import 'Objects.dart';
import 'UI/lang/lang.dart';
import 'dart:io';
import 'dart:async';

void main() async {
  print('1111=====================');
  //log.err('hi my frend', 30, 55);
  //log.info(12);
  var myFile = File('file.txt');
  //var directory = await Directory('dir/subdir').create(recursive: true);
  //print(directory.path);
  //File('logFile.txt').writeAsString("contents11");
  print('uiLang');
  print(uiLang.lang);

  //myFile.writeAsStringSync('Hi my frend');

  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metronome',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyRow(),
    );
  }
}
