import 'package:flutter/material.dart';
import 'pages/start_page.dart';
import 'Objects.dart';
import 'UI/lang/lang.dart';
import 'dart:io';
import 'dart:async';

void main() {
  print('= new ==============================================');



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metronome',
      theme: uiStyles.themaDate,
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
