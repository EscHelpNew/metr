import 'package:flutter/material.dart';
import 'package:metronome/Objects.dart';
import '../styleUI.dart';
import 'dart:ui';

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}

class ColorBoxBig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red[200],
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}

class BitBox extends StatelessWidget {
  //value
  double widthBox;
  double heightBox;
  double heightSpaceBox;
  double radiusBox;

  //widgets
  Container _bitSpaceBox;
  Container _bitBoxUp;
  Container _bitBoxMidle;
  Container _bitBoxDown;
  Container _oneBitColum;
  Row _bitRow;
  List<Widget> bitList = [];

  BitBox({double width = 60, double height = 18, int numBlock = 4}) {
    if (numBlock > 4) {
      if (numBlock > 16) {
        numBlock = 16;
      }
      widthBox = (width * 4.8) / (numBlock);
      heightBox = height;
      heightSpaceBox = height / 5;
      radiusBox = (widthBox > heightBox ? heightBox : widthBox) / 4;
      _createdBoxes();
      for (int i = 0; i < numBlock; i++) {
        bitList.add(_oneBitColum);
      }
    } else {
      widthBox = width;
      heightBox = height;
      heightSpaceBox = height / 5;
      radiusBox = (widthBox > heightBox ? heightBox : widthBox) / 4;
      _createdBoxes();
      for (int i = 0; i < numBlock; i++) {
        bitList.add(_oneBitColum);
      }
    }
  }

  _createdBoxes() {
    _bitSpaceBox = Container(
      height: heightSpaceBox,
    );

    _bitBoxUp = Container(
      height: heightBox,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radiusBox),
            topRight: Radius.circular(radiusBox)),
        color: uiStyles.ColorTheme,
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );

    _bitBoxMidle = Container(
      height: heightBox,
      decoration: BoxDecoration(
        color: uiStyles.ColorTheme,
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );

    _bitBoxDown = Container(
      height: heightBox,
      decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radiusBox),
            bottomRight: Radius.circular(radiusBox)),
        color: uiStyles.ColorTheme,
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );

    _oneBitColum = Container(
      width: widthBox,
      child: Column(
        children: [
          _bitBoxUp,
          _bitSpaceBox,
          _bitBoxMidle,
          _bitSpaceBox,
          _bitBoxDown,
        ],
      ),
    );

    _bitRow = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: bitList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bitRow,
    );
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 96, 32, 223),
              Color.fromARGB(255, 245, 244, 242),
            ]),
        border: Border.all(
          color: Colors.black,
          width: 4,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Image.asset('./lib/assets/img/metronome.png'),
    );
  }
}

class BPMText extends StatelessWidget {
  const BPMText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'BPM',
        style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}

class UILinerProgress extends StatefulWidget {
  const UILinerProgress({Key key}) : super(key: key);

  @override
  State<UILinerProgress> createState() => _UILinerProgressState();
}

class _UILinerProgressState extends State<UILinerProgress> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}