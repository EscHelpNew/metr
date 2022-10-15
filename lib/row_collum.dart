import 'dart:html';

import 'package:flutter/material.dart';
import 'UI/Button.dart';
import 'Objects.dart';

String x = uiStyles.theme;

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            x,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_rounded),
              iconSize: 40,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.navigate_next),
              iconSize: 40,
            ),
          ],
        ),
        body: Container(
          color: Colors.black12,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ColorBox(),
                    ColorBox(),
                    ColorBox(),
                    ColorBox(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                ),
                Column(
                  children: [
                    Container(
                      child: const Icon(
                        Icons.account_balance,
                        size: 40,
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'This could be your ad',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColorBox(),
                    ColorBox(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                ),
                Center(
                  child: Container(
                    child: const Text(
                      'BPM',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Center(
                        child: ButtonPlus(),
                      ),
                    ),
                    const bpmText(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColorBox(),
                    ColorBox(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

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
