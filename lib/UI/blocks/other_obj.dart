import 'package:flutter/material.dart';
import 'package:metronome/Objects.dart';
import '../styleUI.dart';

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
  double widthBox;
  double heightBox;
  double heightSpaceBox;
  double radiusBox;

  Container _bitSpaceBox;
  Container _bitBoxUp;
  Container _bitBoxMidle;
  Container _bitBoxDown;

  BitBox({Key key, double width = 65, double height = 25}) : super(key: key) {
    widthBox = width;
    heightBox = height;
    heightSpaceBox = height / 5;
    radiusBox = (widthBox > heightBox ? heightBox : widthBox) / 4;
    _createdBoxes();
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
